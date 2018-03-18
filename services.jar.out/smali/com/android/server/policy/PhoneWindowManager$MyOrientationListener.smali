.class Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;
.super Lcom/android/server/policy/WindowOrientationListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOrientationListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$1;
    }
.end annotation


# instance fields
.field private final mUpdateRotationRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 1070
    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1060
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->mUpdateRotationRunnable:Ljava/lang/Runnable;

    .line 1069
    return-void
.end method


# virtual methods
.method public onProposedRotationChanged(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 1076
    new-instance v0, Landroid/util/PerformanceManager;

    invoke-direct {v0}, Landroid/util/PerformanceManager;-><init>()V

    .line 1077
    .local v0, "perfMan":Landroid/util/PerformanceManager;
    const v1, 0x204800

    invoke-virtual {v0, v1}, Landroid/util/PerformanceManager;->notify(I)V

    .line 1078
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->mUpdateRotationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1074
    return-void
.end method
