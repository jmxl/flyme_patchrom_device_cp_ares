.class Landroid/widget/AppSecurityPermissions$PermissionItemView$1;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AppSecurityPermissions$PermissionItemView;->addRevokeUIIfNecessary(Lcom/zeusis/widget/dialog/ZeusisDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/AppSecurityPermissions$PermissionItemView;


# direct methods
.method constructor <init>(Landroid/widget/AppSecurityPermissions$PermissionItemView;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/AppSecurityPermissions$PermissionItemView;

    .prologue
    .line 264
    iput-object p1, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->this$1:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 267
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->this$1:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 268
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->this$1:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    invoke-static {v1}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->-get1(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->this$1:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    iget-object v2, v2, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 269
    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->this$1:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    invoke-static {v4}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->-get0(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 268
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 270
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->this$1:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 266
    return-void
.end method
