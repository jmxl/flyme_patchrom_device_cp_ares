.class Lcom/android/server/policy/PhoneWindowManager$24;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->doStatusBarCaptureReverse()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$dockedStackBounds:Landroid/graphics/Rect;

.field final synthetic val$dockedVisibility:I

.field final synthetic val$fullscreenStackBounds:Landroid/graphics/Rect;

.field final synthetic val$fullscreenVisibility:I

.field final synthetic val$win:Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "val$fullscreenVisibility"    # I
    .param p3, "val$dockedVisibility"    # I
    .param p4, "val$fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p5, "val$dockedStackBounds"    # Landroid/graphics/Rect;
    .param p6, "val$win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 9388
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$24;->val$fullscreenVisibility:I

    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager$24;->val$dockedVisibility:I

    iput-object p4, p0, Lcom/android/server/policy/PhoneWindowManager$24;->val$fullscreenStackBounds:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/android/server/policy/PhoneWindowManager$24;->val$dockedStackBounds:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/android/server/policy/PhoneWindowManager$24;->val$win:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 9391
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 9392
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 9393
    const/16 v4, 0x2000

    .line 9394
    .local v4, "mask":I
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager$24;->val$fullscreenVisibility:I

    .line 9395
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager$24;->val$dockedVisibility:I

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$24;->val$fullscreenStackBounds:Landroid/graphics/Rect;

    .line 9396
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$24;->val$dockedStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$24;->val$win:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 9394
    const/4 v1, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 9390
    .end local v4    # "mask":I
    :cond_0
    return-void
.end method
