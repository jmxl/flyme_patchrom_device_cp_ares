.class Lcom/android/server/am/ActivityStackSupervisor$CheckOp;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckOp"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field op:I

.field uid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "o"    # I
    .param p2, "u"    # I
    .param p3, "n"    # Ljava/lang/String;

    .prologue
    .line 1640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1641
    iput p1, p0, Lcom/android/server/am/ActivityStackSupervisor$CheckOp;->op:I

    .line 1642
    iput p2, p0, Lcom/android/server/am/ActivityStackSupervisor$CheckOp;->uid:I

    .line 1643
    iput-object p3, p0, Lcom/android/server/am/ActivityStackSupervisor$CheckOp;->name:Ljava/lang/String;

    .line 1640
    return-void
.end method
