.class Lcom/qualcomm/qcrilhook/QcRilHook$6;
.super Lcom/qualcomm/qcrilhook/OemHookCallback;
.source "QcRilHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSendApnInfo(Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qcrilhook/QcRilHook;


# direct methods
.method constructor <init>(Lcom/qualcomm/qcrilhook/QcRilHook;Landroid/os/Message;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/QcRilHook;
    .param p2, "$anonymous0"    # Landroid/os/Message;

    .prologue
    .line 1353
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook$6;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-direct {p0, p2}, Lcom/qualcomm/qcrilhook/OemHookCallback;-><init>(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onOemHookResponse([BI)V
    .locals 2
    .param p1, "response"    # [B
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1356
    const-string/jumbo v0, "QC_RIL_OEM_HOOK"

    const-string/jumbo v1, "QCRIL send apn info DONE!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    return-void
.end method