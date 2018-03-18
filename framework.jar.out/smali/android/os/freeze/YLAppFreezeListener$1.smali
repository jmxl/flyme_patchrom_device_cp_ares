.class Landroid/os/freeze/YLAppFreezeListener$1;
.super Landroid/os/Handler;
.source "YLAppFreezeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/freeze/YLAppFreezeListener;-><init>(Landroid/os/Looper;Landroid/os/freeze/YLAppFreezeList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/freeze/YLAppFreezeListener;


# direct methods
.method constructor <init>(Landroid/os/freeze/YLAppFreezeListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/freeze/YLAppFreezeListener;

    .prologue
    .line 29
    iput-object p1, p0, Landroid/os/freeze/YLAppFreezeListener$1;->this$0:Landroid/os/freeze/YLAppFreezeListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 32
    iget-object v0, p0, Landroid/os/freeze/YLAppFreezeListener$1;->this$0:Landroid/os/freeze/YLAppFreezeListener;

    invoke-static {v0, p1}, Landroid/os/freeze/YLAppFreezeListener;->-wrap0(Landroid/os/freeze/YLAppFreezeListener;Landroid/os/Message;)V

    .line 31
    return-void
.end method
