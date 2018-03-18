.class Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport;
.super Lcom/zeusis/touchframe/IScreenshotListener$Stub;
.source "TouchFrameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeusis/touchframe/TouchFrameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenshotTransport"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private listener:Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotListener;

.field final synthetic this$0:Lcom/zeusis/touchframe/TouchFrameManager;


# direct methods
.method static synthetic -get0(Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport;)Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotListener;
    .locals 1

    iget-object v0, p0, Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport;->listener:Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotListener;

    return-object v0
.end method

.method constructor <init>(Lcom/zeusis/touchframe/TouchFrameManager;Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotListener;)V
    .locals 1
    .param p1, "this$0"    # Lcom/zeusis/touchframe/TouchFrameManager;
    .param p2, "l"    # Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotListener;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport;->this$0:Lcom/zeusis/touchframe/TouchFrameManager;

    invoke-direct {p0}, Lcom/zeusis/touchframe/IScreenshotListener$Stub;-><init>()V

    .line 186
    iput-object p2, p0, Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport;->listener:Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotListener;

    .line 187
    new-instance v0, Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport$1;

    invoke-direct {v0, p0}, Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport$1;-><init>(Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport;)V

    iput-object v0, p0, Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport;->handler:Landroid/os/Handler;

    .line 185
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 198
    iget-object v1, p0, Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 199
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 196
    return-void
.end method
