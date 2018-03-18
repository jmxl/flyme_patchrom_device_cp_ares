.class Lse/dirac/android/Utils$DelayedRunnable$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/dirac/android/Utils$DelayedRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/dirac/android/Utils$DelayedRunnable;


# direct methods
.method constructor <init>(Lse/dirac/android/Utils$DelayedRunnable;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lse/dirac/android/Utils$DelayedRunnable$1;->this$0:Lse/dirac/android/Utils$DelayedRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lse/dirac/android/Utils$DelayedRunnable$1;->this$0:Lse/dirac/android/Utils$DelayedRunnable;

    invoke-virtual {v0}, Lse/dirac/android/Utils$DelayedRunnable;->run()V

    .line 107
    iget-object v0, p0, Lse/dirac/android/Utils$DelayedRunnable$1;->this$0:Lse/dirac/android/Utils$DelayedRunnable;

    invoke-static {v0}, Lse/dirac/android/Utils$DelayedRunnable;->access$010(Lse/dirac/android/Utils$DelayedRunnable;)I

    .line 108
    return-void
.end method
