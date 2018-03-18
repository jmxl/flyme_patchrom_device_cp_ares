.class Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;
.super Ljava/lang/Object;
.source "AppSnapshotImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;


# direct methods
.method constructor <init>(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 166
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get2(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get6(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 83
    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get6(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get7(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get11(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)F

    move-result v4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-wrap2(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;Ljava/util/ArrayList;Landroid/view/View;FF)V

    .line 84
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get6(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-wrap4(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;Ljava/util/ArrayList;)V

    .line 87
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get7(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Landroid/view/View;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v4}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get11(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)F

    move-result v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 87
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 89
    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-set0(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;F)F

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get2(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get7(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Landroid/view/View;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 98
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v4}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get11(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)F

    move-result v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v4, 0x2

    const/4 v7, 0x0

    .line 97
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 99
    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-set0(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;F)F

    goto/16 :goto_0

    .line 103
    :pswitch_2
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get7(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Landroid/view/View;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v4}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get11(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)F

    move-result v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 103
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 105
    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-set0(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;F)F

    .line 107
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get3(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 108
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get3(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get3(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get3(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 123
    :pswitch_3
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get6(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-wrap3(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;Ljava/util/ArrayList;)V

    .line 124
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get6(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-wrap1(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;Ljava/util/ArrayList;)I

    move-result v9

    .line 125
    .local v9, "moveDistance":I
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get6(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 128
    const-string/jumbo v0, "AppSnapshotImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " handler  moveDistance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  startY - endY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v2}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get10(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)F

    move-result v2

    iget-object v3, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v3}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get0(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zeusis/appsnapshot/util/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    if-gtz v9, :cond_1

    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get4(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 130
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-set1(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;Z)Z

    .line 131
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get5(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Lcom/zeusis/appsnapshot/util/PicComposeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->forceStop()V

    .line 132
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-set4(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;Z)Z

    goto/16 :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get1(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-set1(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;Z)Z

    .line 139
    const-string/jumbo v0, "AppSnapshotImpl"

    const-string/jumbo v1, "force stop handler end ... "

    invoke-static {v0, v1}, Lcom/zeusis/appsnapshot/util/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get10(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v1, v9

    iget-object v2, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v2}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get8(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-wrap0(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 142
    .local v8, "b1":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get5(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Lcom/zeusis/appsnapshot/util/PicComposeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get4(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->addPic2ComposeList(Landroid/graphics/Bitmap;IZZ)V

    .line 163
    .end local v8    # "b1":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-set4(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;Z)Z

    goto/16 :goto_0

    .line 145
    :cond_2
    add-int/lit8 v0, v9, -0x32

    int-to-float v0, v0

    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get10(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)F

    move-result v1

    iget-object v2, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v2}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get0(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3

    int-to-float v0, v9

    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get10(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)F

    move-result v1

    iget-object v2, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v2}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get0(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x42480000    # 50.0f

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-set1(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;Z)Z

    .line 147
    const-string/jumbo v0, "AppSnapshotImpl"

    const-string/jumbo v1, " handler  end ... "

    invoke-static {v0, v1}, Lcom/zeusis/appsnapshot/util/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    add-int/lit8 v0, v9, -0x32

    int-to-float v0, v0

    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get10(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)F

    move-result v1

    iget-object v2, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v2}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get0(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 151
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get5(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Lcom/zeusis/appsnapshot/util/PicComposeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->forceStop()V

    goto :goto_1

    .line 145
    :cond_4
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get4(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_3

    .line 158
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get10(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v1, v9

    iget-object v2, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v2}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get10(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-wrap0(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 159
    .restart local v8    # "b1":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get5(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Lcom/zeusis/appsnapshot/util/PicComposeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get4(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->addPic2ComposeList(Landroid/graphics/Bitmap;IZZ)V

    goto/16 :goto_1

    .line 154
    .end local v8    # "b1":Landroid/graphics/Bitmap;
    :cond_5
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get10(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v1, v9

    iget-object v2, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v2}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get8(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-wrap0(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 155
    .restart local v8    # "b1":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get5(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Lcom/zeusis/appsnapshot/util/PicComposeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;->this$0:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;

    invoke-static {v1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->-get4(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->addPic2ComposeList(Landroid/graphics/Bitmap;IZZ)V

    goto/16 :goto_1

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
