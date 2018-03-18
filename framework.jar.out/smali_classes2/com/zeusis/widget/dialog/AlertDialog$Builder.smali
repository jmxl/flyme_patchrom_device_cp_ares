.class public Lcom/zeusis/widget/dialog/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeusis/widget/dialog/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

.field private mThemeResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zeusis/widget/dialog/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/zeusis/widget/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->mThemeResId:I

    .line 139
    new-instance v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    invoke-direct {v0, p1}, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    .line 140
    iput p2, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->mThemeResId:I

    .line 138
    return-void
.end method


# virtual methods
.method public create()Lcom/zeusis/widget/dialog/AlertDialog;
    .locals 4

    .prologue
    .line 146
    new-instance v0, Lcom/zeusis/widget/dialog/AlertDialog;

    iget-object v1, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iget-object v1, v1, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->mThemeResId:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/zeusis/widget/dialog/AlertDialog;-><init>(Landroid/content/Context;ILcom/zeusis/widget/dialog/AlertDialog;)V

    .line 147
    .local v0, "dialog":Lcom/zeusis/widget/dialog/AlertDialog;
    iget-object v1, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    invoke-virtual {v1, v0}, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->apply(Lcom/zeusis/widget/dialog/AlertDialog;)V

    .line 148
    iget-object v1, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iget-boolean v1, v1, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->setCancelable(Z)V

    .line 149
    iget-object v1, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iget-boolean v1, v1, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 150
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->setCanceledOnTouchOutside(Z)V

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iget-object v1, v1, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 153
    iget-object v1, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iget-object v1, v1, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 154
    return-object v0
.end method

.method public setCancelable(Z)Lcom/zeusis/widget/dialog/AlertDialog$Builder;
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 230
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iput-boolean p1, v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mCancelable:Z

    .line 231
    return-object p0
.end method

.method public setIcon(I)Lcom/zeusis/widget/dialog/AlertDialog$Builder;
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iput p1, v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mIconId:I

    .line 185
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/zeusis/widget/dialog/AlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iput-object p1, v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 190
    return-object p0
.end method

.method public setMessage(I)Lcom/zeusis/widget/dialog/AlertDialog$Builder;
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iget-object v1, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iget-object v1, v1, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 175
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/AlertDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iput-object p1, v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 180
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zeusis/widget/dialog/AlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iget-object v1, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iget-object v1, v1, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 207
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iput-object p2, v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 208
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/zeusis/widget/dialog/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iput-object p1, v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 213
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iput-object p2, v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 214
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zeusis/widget/dialog/AlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iget-object v1, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iget-object v1, v1, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 219
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iput-object p2, v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 220
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/zeusis/widget/dialog/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iput-object p1, v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 225
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iput-object p2, v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 226
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/zeusis/widget/dialog/AlertDialog$Builder;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iput-object p1, v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 236
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/zeusis/widget/dialog/AlertDialog$Builder;
    .locals 1
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iput-object p1, v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 241
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zeusis/widget/dialog/AlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iget-object v1, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iget-object v1, v1, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 195
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iput-object p2, v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 196
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/zeusis/widget/dialog/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iput-object p1, v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 201
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iput-object p2, v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 202
    return-object p0
.end method

.method public setTitle(I)Lcom/zeusis/widget/dialog/AlertDialog$Builder;
    .locals 2
    .param p1, "titleId"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iget-object v1, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iget-object v1, v1, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 165
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/AlertDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iput-object p1, v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 170
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/zeusis/widget/dialog/AlertDialog$Builder;
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->P:Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;

    iput-object p1, v0, Lcom/zeusis/widget/dialog/AlertDialog$AlertParams;->mContentView:Landroid/view/View;

    .line 246
    return-object p0
.end method

.method public show()Lcom/zeusis/widget/dialog/AlertDialog;
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/zeusis/widget/dialog/AlertDialog$Builder;->create()Lcom/zeusis/widget/dialog/AlertDialog;

    move-result-object v0

    .line 159
    .local v0, "dialog":Lcom/zeusis/widget/dialog/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 160
    return-object v0
.end method
