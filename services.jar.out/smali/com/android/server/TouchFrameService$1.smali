.class Lcom/android/server/TouchFrameService$1;
.super Landroid/os/Handler;
.source "TouchFrameService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TouchFrameService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TouchFrameService;


# direct methods
.method constructor <init>(Lcom/android/server/TouchFrameService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/TouchFrameService;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/server/TouchFrameService$1;->this$0:Lcom/android/server/TouchFrameService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/TouchFrameService$1;->this$0:Lcom/android/server/TouchFrameService;

    invoke-static {v0, p1}, Lcom/android/server/TouchFrameService;->-wrap0(Lcom/android/server/TouchFrameService;Landroid/os/Message;)V

    .line 207
    return-void
.end method
