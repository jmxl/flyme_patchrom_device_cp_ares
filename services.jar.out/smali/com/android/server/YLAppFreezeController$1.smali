.class Lcom/android/server/YLAppFreezeController$1;
.super Landroid/content/BroadcastReceiver;
.source "YLAppFreezeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/YLAppFreezeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/YLAppFreezeController;


# direct methods
.method constructor <init>(Lcom/android/server/YLAppFreezeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/YLAppFreezeController;

    .prologue
    .line 919
    iput-object p1, p0, Lcom/android/server/YLAppFreezeController$1;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 923
    const-string/jumbo v1, "YLAppFreezeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive: SRC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 926
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 927
    new-instance v1, Lcom/android/server/YLAppFreezeController$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/YLAppFreezeController$1$1;-><init>(Lcom/android/server/YLAppFreezeController$1;)V

    .line 935
    const-wide/32 v2, 0x8200

    .line 927
    invoke-static {v1, v2, v3}, Lcom/journeyui/smartpolicy/SmartPolicyManager;->registerListener(Lcom/journeyui/smartpolicy/ISmartpolicyListener;J)V

    .line 921
    :cond_0
    return-void
.end method
