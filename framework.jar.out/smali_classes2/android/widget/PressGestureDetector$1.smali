.class Landroid/widget/PressGestureDetector$1;
.super Landroid/webkit/WebChromeClient;
.source "PressGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PressGestureDetector;->canTextBoom()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/PressGestureDetector;


# direct methods
.method constructor <init>(Landroid/widget/PressGestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/PressGestureDetector;

    .prologue
    .line 565
    iput-object p1, p0, Landroid/widget/PressGestureDetector$1;->this$0:Landroid/widget/PressGestureDetector;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public OnGotTextContentsAtPos(FFLjava/lang/String;)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 567
    const-string/jumbo v0, "PressGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnGotTextContentsAtPos: x is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const-string/jumbo v0, "PressGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnGotTextContentsAtPos: y is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const-string/jumbo v0, "PressGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnGotTextContentsAtPos: text is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Landroid/widget/PressGestureDetector$1;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v0, p3}, Landroid/widget/PressGestureDetector;->-set2(Landroid/widget/PressGestureDetector;Ljava/lang/String;)Ljava/lang/String;

    .line 566
    return-void
.end method
