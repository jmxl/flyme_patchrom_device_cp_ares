.class Lcom/android/server/policy/global/GlobalActionViewMediator$DelayCloseWindow;
.super Ljava/util/TimerTask;
.source "GlobalActionViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/global/GlobalActionViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayCloseWindow"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/global/GlobalActionViewMediator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$DelayCloseWindow;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/global/GlobalActionViewMediator;Lcom/android/server/policy/global/GlobalActionViewMediator$DelayCloseWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionViewMediator$DelayCloseWindow;-><init>(Lcom/android/server/policy/global/GlobalActionViewMediator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$DelayCloseWindow;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->isGlobalActionShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$DelayCloseWindow;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get5(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 188
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$DelayCloseWindow;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get0(Lcom/android/server/policy/global/GlobalActionViewMediator;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "time\'s up and close the GlobalActionView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    return-void
.end method
