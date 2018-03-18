.class Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$1;
.super Ljava/lang/Object;
.source "SmartPolicyBrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->filter(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;
    .param p2, "val$packageName"    # Ljava/lang/String;
    .param p3, "val$context"    # Landroid/content/Context;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$1;->this$0:Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;

    iput-object p2, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$1;->this$0:Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;

    iget-object v3, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$1;->val$packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->-set1(Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    iget-object v2, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$1;->this$0:Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;

    iget-object v3, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$1;->val$packageName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->-wrap0(Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 72
    .local v1, "ratio":I
    iget-object v2, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$1;->this$0:Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;

    invoke-static {v2}, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->-get1(Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;)Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$Callbacks;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$1;->this$0:Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;

    invoke-static {v2}, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->-get0(Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 73
    iget-object v2, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$1;->this$0:Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;

    invoke-static {v2, v1}, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->-set0(Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;I)I

    .line 74
    iget-object v2, p0, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$1;->this$0:Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;

    invoke-static {v2}, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;->-get1(Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;)Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$Callbacks;

    move-result-object v2

    invoke-interface {v2}, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$Callbacks;->updateBrightnessTrigger()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v1    # "ratio":I
    :cond_0
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
