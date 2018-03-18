.class Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$1;->this$1:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1379
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$1;->this$1:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->-get1(Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 1380
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1381
    .local v0, "junkMap":Ljava/util/HashMap;
    const-string/jumbo v1, "shutdown_reason"

    const-string/jumbo v2, "shutdownWithPowerOffButtonClick"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    const-string/jumbo v1, "GlobalActionsDialog"

    sget-object v2, Landroid/util/JunkEvent;->FRAMEWORK_EVENT_ID_6:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Landroid/util/JunkEvent;->sendFrameworkJunk(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 1383
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$1;->this$1:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->-get0(Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1377
    return-void
.end method
