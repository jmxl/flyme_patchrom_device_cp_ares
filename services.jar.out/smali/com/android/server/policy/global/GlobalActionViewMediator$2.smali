.class Lcom/android/server/policy/global/GlobalActionViewMediator$2;
.super Ljava/lang/Object;
.source "GlobalActionViewMediator.java"

# interfaces
.implements Lcom/android/server/policy/global/IMediatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/global/GlobalActionViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;


# direct methods
.method constructor <init>(Lcom/android/server/policy/global/GlobalActionViewMediator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reboot()V
    .locals 5

    .prologue
    .line 146
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v2}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-wrap0(Lcom/android/server/policy/global/GlobalActionViewMediator;)V

    .line 149
    :try_start_0
    const-string/jumbo v2, "power"

    .line 148
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 150
    .local v1, "pm":Landroid/os/IPowerManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    return-void

    .line 151
    .end local v1    # "pm":Landroid/os/IPowerManager;
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "zszs"

    const-string/jumbo v3, "PowerManager service died!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-wrap0(Lcom/android/server/policy/global/GlobalActionViewMediator;)V

    .line 141
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get7(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 139
    return-void
.end method

.method public windowHide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get0(Lcom/android/server/policy/global/GlobalActionViewMediator;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "windowHide is hided"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get6(Lcom/android/server/policy/global/GlobalActionViewMediator;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get6(Lcom/android/server/policy/global/GlobalActionViewMediator;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 127
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get6(Lcom/android/server/policy/global/GlobalActionViewMediator;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 128
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v0, v2}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-set2(Lcom/android/server/policy/global/GlobalActionViewMediator;Ljava/util/Timer;)Ljava/util/Timer;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get3(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get1(Lcom/android/server/policy/global/GlobalActionViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get3(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v1}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get2(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-set0(Lcom/android/server/policy/global/GlobalActionViewMediator;Z)Z

    .line 135
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get0(Lcom/android/server/policy/global/GlobalActionViewMediator;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unregist the receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 131
    :cond_1
    return-void
.end method

.method public windowShowed()V
    .locals 6

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v1}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get0(Lcom/android/server/policy/global/GlobalActionViewMediator;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "windowShowed is showed up"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    invoke-static {v1, v2}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-set2(Lcom/android/server/policy/global/GlobalActionViewMediator;Ljava/util/Timer;)Ljava/util/Timer;

    .line 111
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    new-instance v2, Lcom/android/server/policy/global/GlobalActionViewMediator$DelayCloseWindow;

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/policy/global/GlobalActionViewMediator$DelayCloseWindow;-><init>(Lcom/android/server/policy/global/GlobalActionViewMediator;Lcom/android/server/policy/global/GlobalActionViewMediator$DelayCloseWindow;)V

    invoke-static {v1, v2}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-set1(Lcom/android/server/policy/global/GlobalActionViewMediator;Lcom/android/server/policy/global/GlobalActionViewMediator$DelayCloseWindow;)Lcom/android/server/policy/global/GlobalActionViewMediator$DelayCloseWindow;

    .line 112
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v1}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get6(Lcom/android/server/policy/global/GlobalActionViewMediator;)Ljava/util/Timer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v2}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get4(Lcom/android/server/policy/global/GlobalActionViewMediator;)Lcom/android/server/policy/global/GlobalActionViewMediator$DelayCloseWindow;

    move-result-object v2

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 115
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v1}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get3(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v2}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get2(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v1}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get0(Lcom/android/server/policy/global/GlobalActionViewMediator;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "regist the receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-set0(Lcom/android/server/policy/global/GlobalActionViewMediator;Z)Z

    .line 108
    return-void
.end method
