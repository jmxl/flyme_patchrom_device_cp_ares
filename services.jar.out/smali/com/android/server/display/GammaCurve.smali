.class Lcom/android/server/display/GammaCurve;
.super Ljava/lang/Object;
.source "CurveFactory.java"

# interfaces
.implements Lcom/android/server/display/Curve;


# static fields
.field private static final TAG:Ljava/lang/String; = "GammaCurve"


# instance fields
.field private mCurveInited:Z

.field private mFactor:F

.field private mOffset:F


# direct methods
.method public constructor <init>([F[F)V
    .locals 6
    .param p1, "x"    # [F
    .param p2, "y"    # [F

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    const/4 v5, 0x1

    const v4, 0x3ee8ba2f

    const/4 v3, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v0, p0, Lcom/android/server/display/GammaCurve;->mOffset:F

    .line 13
    iput v0, p0, Lcom/android/server/display/GammaCurve;->mFactor:F

    .line 14
    iput-boolean v3, p0, Lcom/android/server/display/GammaCurve;->mCurveInited:Z

    .line 16
    array-length v0, p1

    if-lt v0, v1, :cond_0

    array-length v0, p2

    if-ge v0, v1, :cond_1

    .line 17
    :cond_0
    const-string/jumbo v0, "GammaCurve"

    const-string/jumbo v1, "cannot initial gamma curve"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iput-boolean v3, p0, Lcom/android/server/display/GammaCurve;->mCurveInited:Z

    .line 24
    :cond_1
    aget v0, p2, v5

    invoke-static {v0, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v0

    aget v1, p2, v3

    invoke-static {v1, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v1

    sub-float/2addr v0, v1

    aget v1, p1, v5

    aget v2, p1, v3

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/GammaCurve;->mFactor:F

    .line 25
    aget v0, p2, v3

    invoke-static {v0, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v0

    iget v1, p0, Lcom/android/server/display/GammaCurve;->mFactor:F

    aget v2, p1, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/GammaCurve;->mOffset:F

    .line 26
    iput-boolean v5, p0, Lcom/android/server/display/GammaCurve;->mCurveInited:Z

    .line 27
    const-string/jumbo v0, "GammaCurve"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gamma curve init mFactor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/GammaCurve;->mFactor:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mOffset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/GammaCurve;->mOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void
.end method


# virtual methods
.method public transform(F)F
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/server/display/GammaCurve;->mCurveInited:Z

    if-nez v0, :cond_0

    .line 32
    return p1

    .line 34
    :cond_0
    iget v0, p0, Lcom/android/server/display/GammaCurve;->mFactor:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/server/display/GammaCurve;->mOffset:F

    add-float/2addr v0, v1

    const v1, 0x400ccccd    # 2.2f

    invoke-static {v0, v1}, Landroid/util/MathUtils;->pow(FF)F

    move-result v0

    return v0
.end method
