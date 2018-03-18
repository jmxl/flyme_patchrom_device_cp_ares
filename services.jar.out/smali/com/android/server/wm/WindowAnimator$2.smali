.class Lcom/android/server/wm/WindowAnimator$2;
.super Landroid/content/BroadcastReceiver;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowAnimator;-><init>(Lcom/android/server/wm/WindowManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowAnimator;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator$2;->this$0:Lcom/android/server/wm/WindowAnimator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 164
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "action.top.activity.is.launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator$2;->this$0:Lcom/android/server/wm/WindowAnimator;

    const-string/jumbo v2, "is_launcher_top"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/wm/WindowAnimator;->mIsLauncherTop:Z

    .line 167
    invoke-static {}, Lcom/android/server/wm/WindowAnimator;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receiver,mIsLauncherTop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowAnimator$2;->this$0:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowAnimator;->mIsLauncherTop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    return-void
.end method
