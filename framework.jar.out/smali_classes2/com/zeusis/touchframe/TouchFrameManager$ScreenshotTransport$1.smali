.class Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport$1;
.super Landroid/os/Handler;
.source "TouchFrameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport;-><init>(Lcom/zeusis/touchframe/TouchFrameManager;Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport;


# direct methods
.method constructor <init>(Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport;)V
    .locals 0
    .param p1, "this$1"    # Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport$1;->this$1:Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport$1;->this$1:Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport;

    invoke-static {v0}, Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport;->-get0(Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotTransport;)Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    invoke-interface {v1, v0}, Lcom/zeusis/touchframe/TouchFrameManager$ScreenshotListener;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 189
    return-void
.end method
