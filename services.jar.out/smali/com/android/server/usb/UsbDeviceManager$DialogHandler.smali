.class final Lcom/android/server/usb/UsbDeviceManager$DialogHandler;
.super Landroid/os/Handler;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DialogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$DialogHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    .line 362
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 361
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 367
    const-string/jumbo v0, "trigger_restart_min_framework"

    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$DialogHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get4(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$DialogHandler;->removeMessages(I)V

    .line 370
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$DialogHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-wrap2(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$DialogHandler;->removeMessages(I)V

    .line 373
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$DialogHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
