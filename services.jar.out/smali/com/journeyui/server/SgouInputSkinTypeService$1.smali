.class Lcom/journeyui/server/SgouInputSkinTypeService$1;
.super Landroid/content/BroadcastReceiver;
.source "SgouInputSkinTypeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyui/server/SgouInputSkinTypeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyui/server/SgouInputSkinTypeService;


# direct methods
.method constructor <init>(Lcom/journeyui/server/SgouInputSkinTypeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/journeyui/server/SgouInputSkinTypeService;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/journeyui/server/SgouInputSkinTypeService$1;->this$0:Lcom/journeyui/server/SgouInputSkinTypeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 22
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 28
    const-string/jumbo v3, "keyguard"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 29
    .local v2, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    .line 30
    .local v1, "flag":Z
    if-eqz v1, :cond_0

    .line 31
    const/4 v3, 0x1

    invoke-static {p1, v3}, Lcom/journeyui/server/SgouInputSkinTracker;->setSkinType(Landroid/content/Context;I)V

    goto :goto_0

    .line 34
    .end local v1    # "flag":Z
    .end local v2    # "keyguardManager":Landroid/app/KeyguardManager;
    :cond_2
    const-string/jumbo v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method
