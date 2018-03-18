.class Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$2;
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
    .line 1386
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$2;->this$1:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1391
    :try_start_0
    const-string/jumbo v2, "power"

    .line 1390
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 1392
    .local v1, "pm":Landroid/os/IPowerManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V

    .line 1393
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog$2;->this$1:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->-get0(Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1388
    return-void

    .line 1394
    .end local v1    # "pm":Landroid/os/IPowerManager;
    :catch_0
    move-exception v0

    .line 1395
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "GlobalActionsDialog"

    const-string/jumbo v3, "PowerManager service died!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1396
    return-void
.end method
