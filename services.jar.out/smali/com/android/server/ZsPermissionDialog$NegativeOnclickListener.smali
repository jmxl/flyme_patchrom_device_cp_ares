.class Lcom/android/server/ZsPermissionDialog$NegativeOnclickListener;
.super Ljava/lang/Object;
.source "ZsPermissionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ZsPermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NegativeOnclickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ZsPermissionDialog;


# direct methods
.method constructor <init>(Lcom/android/server/ZsPermissionDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ZsPermissionDialog;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/server/ZsPermissionDialog$NegativeOnclickListener;->this$0:Lcom/android/server/ZsPermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/server/ZsPermissionDialog$NegativeOnclickListener;->this$0:Lcom/android/server/ZsPermissionDialog;

    invoke-static {v0}, Lcom/android/server/ZsPermissionDialog;->-get1(Lcom/android/server/ZsPermissionDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 283
    return-void
.end method
