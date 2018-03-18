.class public Lcom/android/server/display/CurveFactory;
.super Ljava/lang/Object;
.source "CurveFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGammaCurve([F[F)Lcom/android/server/display/GammaCurve;
    .locals 1
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    .prologue
    .line 40
    new-instance v0, Lcom/android/server/display/GammaCurve;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/GammaCurve;-><init>([F[F)V

    return-object v0
.end method
