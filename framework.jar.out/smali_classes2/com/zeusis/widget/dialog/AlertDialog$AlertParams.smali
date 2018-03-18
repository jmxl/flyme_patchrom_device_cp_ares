.class Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeusis/widget/dialog/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlertParams"
.end annotation


# instance fields
.field public mCancelable:Z

.field public mContentView:Landroid/view/View;

.field public final mContext:Landroid/content/Context;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconId:I

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mIconId:I

    .line 70
    iput-object p1, p0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mContext:Landroid/content/Context;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mCancelable:Z

    .line 69
    return-void
.end method


# virtual methods
.method public apply(Lcom/zeusis/widget/dialog/AlertDialog;)V
    .locals 2
    .param p1, "dialog"    # Lcom/zeusis/widget/dialog/AlertDialog;

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/zeusis/widget/dialog/ZeusisDialog;->title(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 83
    :cond_1
    iget v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mIconId:I

    if-eqz v0, :cond_2

    .line 84
    iget v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->setIcon(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/zeusis/widget/dialog/ZeusisDialog;->message(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/ZeusisDialog;

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 92
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mContentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/zeusis/widget/dialog/ZeusisDialog;->contentView(Landroid/view/View;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 96
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->positiveAction(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 97
    new-instance v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams$1;

    invoke-direct {v0, p0, p1}, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams$1;-><init>(Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;Lcom/zeusis/widget/dialog/AlertDialog;)V

    invoke-virtual {p1, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->positiveActionClickListener(Landroid/view/View$OnClickListener;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 105
    :cond_5
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 106
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->negativeAction(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 107
    new-instance v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams$2;

    invoke-direct {v0, p0, p1}, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams$2;-><init>(Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;Lcom/zeusis/widget/dialog/AlertDialog;)V

    invoke-virtual {p1, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->negativeActionClickListener(Landroid/view/View$OnClickListener;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 115
    :cond_6
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 116
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->neutralAction(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 117
    new-instance v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams$3;

    invoke-direct {v0, p0, p1}, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams$3;-><init>(Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;Lcom/zeusis/widget/dialog/AlertDialog;)V

    invoke-virtual {p1, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->neutralActionClickListener(Landroid/view/View$OnClickListener;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 126
    :cond_7
    invoke-virtual {p1, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->setShadeAnimation(Z)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 74
    return-void
.end method
