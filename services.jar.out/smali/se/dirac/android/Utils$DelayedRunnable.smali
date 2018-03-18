.class public abstract Lse/dirac/android/Utils$DelayedRunnable;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/dirac/android/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DelayedRunnable"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final mDelayMs:I

.field private mDelayedCheckPosted:I

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lse/dirac/android/Utils$DelayedRunnable;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lse/dirac/android/Utils$DelayedRunnable;->mDelayedCheckPosted:I

    .line 103
    new-instance v0, Lse/dirac/android/Utils$DelayedRunnable$1;

    invoke-direct {v0, p0}, Lse/dirac/android/Utils$DelayedRunnable$1;-><init>(Lse/dirac/android/Utils$DelayedRunnable;)V

    iput-object v0, p0, Lse/dirac/android/Utils$DelayedRunnable;->mRunnable:Ljava/lang/Runnable;

    .line 89
    iput p1, p0, Lse/dirac/android/Utils$DelayedRunnable;->mDelayMs:I

    .line 90
    return-void
.end method

.method static synthetic access$010(Lse/dirac/android/Utils$DelayedRunnable;)I
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lse/dirac/android/Utils$DelayedRunnable;->mDelayedCheckPosted:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lse/dirac/android/Utils$DelayedRunnable;->mDelayedCheckPosted:I

    return v0
.end method


# virtual methods
.method public pendingRun()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 93
    iget v1, p0, Lse/dirac/android/Utils$DelayedRunnable;->mDelayedCheckPosted:I

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestRun()V
    .locals 4

    .prologue
    .line 97
    iget v0, p0, Lse/dirac/android/Utils$DelayedRunnable;->mDelayedCheckPosted:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lse/dirac/android/Utils$DelayedRunnable;->mDelayedCheckPosted:I

    .line 98
    iget-object v0, p0, Lse/dirac/android/Utils$DelayedRunnable;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lse/dirac/android/Utils$DelayedRunnable;->mRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lse/dirac/android/Utils$DelayedRunnable;->mDelayMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    return-void
.end method

.method public abstract run()V
.end method
