.class public Lcom/zeusis/widget/dialog/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeusis/widget/dialog/BaseDialog$1;,
        Lcom/zeusis/widget/dialog/BaseDialog$2;,
        Lcom/zeusis/widget/dialog/BaseDialog$ButtonHandler;,
        Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;,
        Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;
    }
.end annotation


# static fields
.field public static final ACTION_NEGATIVE:I = 0x102001a

.field public static final ACTION_NEUTRAL:I = 0x102001b

.field public static final ACTION_POSITIVE:I = 0x1020019

.field public static final TITLE:I

.field static TYPEFACE_NSHL:Landroid/graphics/Typeface;

.field static TYPEFACE_NSHM:Landroid/graphics/Typeface;

.field static TYPEFACE_NSHR:Landroid/graphics/Typeface;

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private icon:Landroid/widget/ImageView;

.field protected mActionHeight:I

.field protected mActionMinWidth:I

.field protected mActionOuterHeight:I

.field protected mActionOuterPadding:I

.field protected mActionPadding:I

.field private final mButtonClickHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mCancelable:Z

.field private mCanceledOnTouchOutside:Z

.field private mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

.field private mContainer:Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;

.field private mContent:Landroid/view/View;

.field protected mContentPadding:I

.field private mContext:Landroid/content/Context;

.field protected mDialogBottomPadding:I

.field protected mDialogContentMarginBottom:I

.field protected mDialogContentMarginLeft:I

.field protected mDialogContentMarginRight:I

.field protected mDialogContentMarginTop:I

.field protected mDialogHorizontalPadding:I

.field protected mDialogTopPadding:I

.field private final mDismissAction:Ljava/lang/Runnable;

.field private mDismissPending:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasMessage:Z

.field protected mInAnimationId:I

.field private mLayoutActionVertical:Z

.field private mLayoutHeight:I

.field private mLayoutWidth:I

.field private mMaxHeight:I

.field private mMaxWidth:I

.field protected mNegativeAction:Landroid/widget/Button;

.field protected mNeutralAction:Landroid/widget/Button;

.field protected mOutAnimationId:I

.field protected mPositiveAction:Landroid/widget/Button;

.field protected mTitle:Landroid/widget/TextView;

.field private mWantActionVertical:Z


# direct methods
.method static synthetic -get0(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic -get10(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get11(Lcom/zeusis/widget/dialog/BaseDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mLayoutActionVertical:Z

    return v0
.end method

.method static synthetic -get12(Lcom/zeusis/widget/dialog/BaseDialog;)I
    .locals 1

    iget v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mLayoutHeight:I

    return v0
.end method

.method static synthetic -get13(Lcom/zeusis/widget/dialog/BaseDialog;)I
    .locals 1

    iget v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mLayoutWidth:I

    return v0
.end method

.method static synthetic -get14(Lcom/zeusis/widget/dialog/BaseDialog;)I
    .locals 1

    iget v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mMaxHeight:I

    return v0
.end method

.method static synthetic -get15(Lcom/zeusis/widget/dialog/BaseDialog;)I
    .locals 1

    iget v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mMaxWidth:I

    return v0
.end method

.method static synthetic -get16(Lcom/zeusis/widget/dialog/BaseDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mWantActionVertical:Z

    return v0
.end method

.method static synthetic -get2(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic -get3(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic -get4(Lcom/zeusis/widget/dialog/BaseDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mCancelable:Z

    return v0
.end method

.method static synthetic -get5(Lcom/zeusis/widget/dialog/BaseDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mCanceledOnTouchOutside:Z

    return v0
.end method

.method static synthetic -get6(Lcom/zeusis/widget/dialog/BaseDialog;)Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;
    .locals 1

    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/zeusis/widget/dialog/BaseDialog;)Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mContainer:Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;

    return-object v0
.end method

.method static synthetic -get8(Lcom/zeusis/widget/dialog/BaseDialog;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get9(Lcom/zeusis/widget/dialog/BaseDialog;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mDismissAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/zeusis/widget/dialog/BaseDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mDismissPending:Z

    return p1
.end method

.method static synthetic -set1(Lcom/zeusis/widget/dialog/BaseDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mLayoutActionVertical:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/zeusis/widget/dialog/BaseDialog;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/zeusis/widget/dialog/BaseDialog;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 119
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    sput v0, Lcom/zeusis/widget/dialog/BaseDialog;->TITLE:I

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    const v0, 0x10304d5

    invoke-direct {p0, p1, v0}, Lcom/zeusis/widget/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "style"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 194
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 56
    iput v4, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mLayoutWidth:I

    .line 57
    iput v4, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mLayoutHeight:I

    .line 88
    new-instance v1, Lcom/zeusis/widget/dialog/BaseDialog$ButtonHandler;

    invoke-direct {v1, p0}, Lcom/zeusis/widget/dialog/BaseDialog$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mHandler:Landroid/os/Handler;

    .line 89
    new-instance v1, Lcom/zeusis/widget/dialog/BaseDialog$1;

    invoke-direct {v1, p0}, Lcom/zeusis/widget/dialog/BaseDialog$1;-><init>(Lcom/zeusis/widget/dialog/BaseDialog;)V

    iput-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mDismissAction:Ljava/lang/Runnable;

    .line 103
    iput-boolean v3, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mLayoutActionVertical:Z

    .line 104
    iput-boolean v3, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mWantActionVertical:Z

    .line 106
    iput-boolean v2, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mCancelable:Z

    .line 107
    iput-boolean v2, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mCanceledOnTouchOutside:Z

    .line 108
    iput-boolean v3, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mDismissPending:Z

    .line 159
    new-instance v1, Lcom/zeusis/widget/dialog/BaseDialog$2;

    invoke-direct {v1, p0}, Lcom/zeusis/widget/dialog/BaseDialog$2;-><init>(Lcom/zeusis/widget/dialog/BaseDialog;)V

    iput-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mButtonClickHandler:Landroid/view/View$OnClickListener;

    .line 195
    iput-object p1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mContext:Landroid/content/Context;

    .line 199
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 201
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 204
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 205
    .local v0, "layout":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 206
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 209
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 211
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/BaseDialog;->initTypeFace()V

    .line 212
    invoke-direct {p0, p1, p2}, Lcom/zeusis/widget/dialog/BaseDialog;->init(Landroid/content/Context;I)V

    .line 193
    return-void
.end method

.method private checkItems()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1408
    iget-boolean v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mHasMessage:Z

    if-eqz v0, :cond_0

    .line 1409
    invoke-virtual {p0}, Lcom/zeusis/widget/dialog/BaseDialog;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 1410
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mContext:Landroid/content/Context;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->resetContentMarginTop(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 1416
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1417
    :cond_1
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1419
    :cond_2
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 1420
    :cond_3
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1422
    :cond_4
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 1423
    :cond_5
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1407
    :cond_6
    return-void

    .line 1412
    :cond_7
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1413
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mContext:Landroid/content/Context;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->resetContentMarginTop(I)Lcom/zeusis/widget/dialog/BaseDialog;

    goto :goto_0
.end method

.method public static dpToPx(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # I

    .prologue
    .line 216
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getNSHRTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 242
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 243
    .local v0, "nshr":Landroid/widget/TextView;
    sget-object v1, Lcom/zeusis/widget/dialog/BaseDialog;->TYPEFACE_NSHR:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 244
    sget-object v1, Lcom/zeusis/widget/dialog/BaseDialog;->TYPEFACE_NSHR:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 245
    :cond_0
    return-object v0
.end method

.method private init(Landroid/content/Context;I)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "style"    # I

    .prologue
    .line 249
    const/16 v19, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zeusis/widget/dialog/BaseDialog;->mContentPadding:I

    .line 250
    const/16 v19, 0x3c

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zeusis/widget/dialog/BaseDialog;->mActionMinWidth:I

    .line 251
    const/16 v19, 0x24

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zeusis/widget/dialog/BaseDialog;->mActionHeight:I

    .line 252
    const/16 v19, 0x34

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zeusis/widget/dialog/BaseDialog;->mActionOuterHeight:I

    .line 253
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zeusis/widget/dialog/BaseDialog;->mActionPadding:I

    .line 254
    const/16 v19, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zeusis/widget/dialog/BaseDialog;->mActionOuterPadding:I

    .line 255
    const/16 v19, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zeusis/widget/dialog/BaseDialog;->mDialogHorizontalPadding:I

    .line 257
    const/16 v19, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zeusis/widget/dialog/BaseDialog;->mDialogTopPadding:I

    .line 258
    const/16 v19, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zeusis/widget/dialog/BaseDialog;->mDialogBottomPadding:I

    .line 259
    const/16 v19, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v15

    .line 260
    .local v15, "titleMarginLeft":I
    const/16 v19, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v17

    .line 261
    .local v17, "titleMarginTop":I
    const/16 v16, 0x0

    .line 262
    .local v16, "titleMarginRight":I
    const/4 v14, 0x0

    .line 263
    .local v14, "titleMarginBottom":I
    const/16 v19, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v7

    .line 264
    .local v7, "contentMarginLeft":I
    const/16 v19, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v8

    .line 265
    .local v8, "contentMarginRight":I
    const/16 v19, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v9

    .line 266
    .local v9, "contentMarginTop":I
    const/4 v6, 0x0

    .line 267
    .local v6, "contentMarginBottom":I
    move-object/from16 v0, p0

    iput v7, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mDialogContentMarginLeft:I

    .line 268
    move-object/from16 v0, p0

    iput v9, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mDialogContentMarginTop:I

    .line 269
    move-object/from16 v0, p0

    iput v8, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mDialogContentMarginRight:I

    .line 266
    const/16 v19, 0x0

    .line 270
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zeusis/widget/dialog/BaseDialog;->mDialogContentMarginBottom:I

    .line 271
    const/16 v19, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    .line 272
    .local v3, "actionMarginTop":I
    const/16 v19, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v11

    .line 273
    .local v11, "iconMarginLeft":I
    const/16 v19, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v13

    .line 274
    .local v13, "iconMarginTop":I
    const/16 v19, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v12

    .line 275
    .local v12, "iconMarginRignt":I
    const/4 v10, 0x0

    .line 277
    .local v10, "iconMarginBottom":I
    new-instance v19, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;-><init>(Lcom/zeusis/widget/dialog/BaseDialog;Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-object/from16 v19, v0

    const v20, 0x10806ae

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setBackgroundResource(I)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v15, v1, v2, v14}, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->setTitleMargin(IIII)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v9, v8, v6}, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->setContentMargin(IIII)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->setActionMarginTop(I)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v13, v12, v10}, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->setIconMargin(IIII)V

    .line 283
    new-instance v19, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;-><init>(Lcom/zeusis/widget/dialog/BaseDialog;Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zeusis/widget/dialog/BaseDialog;->mContainer:Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;

    .line 285
    invoke-static/range {p1 .. p1}, Lcom/zeusis/widget/dialog/BaseDialog;->getNSHRTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zeusis/widget/dialog/BaseDialog;->mTitle:Landroid/widget/TextView;

    .line 286
    new-instance v19, Landroid/widget/Button;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mButtonClickHandler:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    new-instance v19, Landroid/widget/Button;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mButtonClickHandler:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    new-instance v19, Landroid/widget/Button;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mButtonClickHandler:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mTitle:Landroid/widget/TextView;

    move-object/from16 v19, v0

    sget v20, Lcom/zeusis/widget/dialog/BaseDialog;->TITLE:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setId(I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mTitle:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, 0x800003

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setGravity(I)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mTitle:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/high16 v20, -0x22000000

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    const/high16 v18, 0x41900000    # 18.0f

    .line 302
    .local v18, "titleTextSize":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mTitle:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 304
    sget-object v4, Lcom/zeusis/widget/dialog/BaseDialog;->TYPEFACE_NSHM:Landroid/graphics/Typeface;

    .line 305
    .local v4, "action_tf":Landroid/graphics/Typeface;
    const/high16 v5, 0x41600000    # 14.0f

    .line 306
    .local v5, "buttonTextSize":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    move-object/from16 v19, v0

    const v20, 0x1020019

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setId(I)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 308
    if-eqz v4, :cond_0

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 310
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    move-object/from16 v19, v0

    const v20, 0x1080839

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setBackgroundResource(I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    move-object/from16 v19, v0

    const v20, 0x102001a

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setId(I)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 314
    if-eqz v4, :cond_1

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 316
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    move-object/from16 v19, v0

    const v20, 0x1080839

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setBackgroundResource(I)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    move-object/from16 v19, v0

    const v20, 0x102001b

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setId(I)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 319
    if-eqz v4, :cond_2

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 321
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    move-object/from16 v19, v0

    const v20, 0x1080839

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setBackgroundResource(I)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mTitle:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mContainer:Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 339
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->cancelable(Z)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 340
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->canceledOnTouchOutside(Z)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/zeusis/widget/dialog/BaseDialog;->onCreate()V

    .line 343
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->applyStyle(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 344
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v19

    new-instance v20, Landroid/graphics/drawable/ColorDrawable;

    const v21, -0x7ff4e4d2

    invoke-direct/range {v20 .. v21}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v19

    const/16 v20, -0x1

    const/16 v21, -0x1

    invoke-virtual/range {v19 .. v21}, Landroid/view/Window;->setLayout(II)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mContainer:Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-super {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 248
    return-void
.end method

.method private initTypeFace()V
    .locals 2

    .prologue
    .line 219
    sget-object v1, Lcom/zeusis/widget/dialog/BaseDialog;->TYPEFACE_NSHR:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    .line 221
    :try_start_0
    const-string/jumbo v1, "system/fonts/Zeusis_NotoSansHans-Regular.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Lcom/zeusis/widget/dialog/BaseDialog;->TYPEFACE_NSHR:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 226
    :cond_0
    :goto_0
    sget-object v1, Lcom/zeusis/widget/dialog/BaseDialog;->TYPEFACE_NSHL:Landroid/graphics/Typeface;

    if-nez v1, :cond_1

    .line 228
    :try_start_1
    const-string/jumbo v1, "system/fonts/Zeusis_NotoSansHans-Light.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Lcom/zeusis/widget/dialog/BaseDialog;->TYPEFACE_NSHL:Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 233
    :cond_1
    :goto_1
    sget-object v1, Lcom/zeusis/widget/dialog/BaseDialog;->TYPEFACE_NSHM:Landroid/graphics/Typeface;

    if-nez v1, :cond_2

    .line 235
    :try_start_2
    const-string/jumbo v1, "system/fonts/Zeusis_NotoSansHans-Medium.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Lcom/zeusis/widget/dialog/BaseDialog;->TYPEFACE_NSHM:Landroid/graphics/Typeface;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 218
    :cond_2
    :goto_2
    return-void

    .line 236
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_2

    .line 229
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 222
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method private setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 533
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 534
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 537
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 558
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/zeusis/widget/dialog/BaseDialog;->positiveAction(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 542
    iput-object p4, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mButtonPositiveMessage:Landroid/os/Message;

    .line 531
    :goto_0
    return-void

    .line 547
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/zeusis/widget/dialog/BaseDialog;->negativeAction(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 548
    iput-object p4, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 553
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/zeusis/widget/dialog/BaseDialog;->neutralAction(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 554
    iput-object p4, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 537
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public actionBackground(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 772
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/dialog/BaseDialog;->positiveActionBackground(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 773
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/dialog/BaseDialog;->negativeActionBackground(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 774
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/dialog/BaseDialog;->neutralActionBackground(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 775
    return-object p0
.end method

.method public actionBackground(Landroid/graphics/drawable/Drawable;)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 785
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/dialog/BaseDialog;->positiveActionBackground(Landroid/graphics/drawable/Drawable;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 786
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/dialog/BaseDialog;->negativeActionBackground(Landroid/graphics/drawable/Drawable;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 787
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/dialog/BaseDialog;->neutralActionBackground(Landroid/graphics/drawable/Drawable;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 788
    return-object p0
.end method

.method public actionTextAppearance(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 814
    return-object p0
.end method

.method public actionTextColor(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 837
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/dialog/BaseDialog;->positiveActionTextColor(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 838
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/dialog/BaseDialog;->negativeActionTextColor(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 839
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/dialog/BaseDialog;->neutralActionTextColor(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 840
    return-object p0
.end method

.method public actionTextColor(Landroid/content/res/ColorStateList;)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 0
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 824
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/dialog/BaseDialog;->positiveActionTextColor(Landroid/content/res/ColorStateList;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 825
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/dialog/BaseDialog;->negativeActionTextColor(Landroid/content/res/ColorStateList;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 826
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/dialog/BaseDialog;->neutralActionTextColor(Landroid/content/res/ColorStateList;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 827
    return-object p0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1400
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/dialog/BaseDialog;->contentView(Landroid/view/View;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 1399
    return-void
.end method

.method public applyStyle(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 30
    .param p1, "resId"    # I

    .prologue
    .line 364
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 365
    .local v8, "context":Landroid/content/Context;
    sget-object v29, Lcom/android/internal/R$styleable;->BaseDialog:[I

    move/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v8, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 367
    .local v2, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mLayoutWidth:I

    .line 368
    .local v13, "layout_width":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zeusis/widget/dialog/BaseDialog;->mLayoutHeight:I

    .line 369
    .local v12, "layout_height":I
    const/4 v11, 0x0

    .line 370
    .local v11, "layoutParamsDefined":Z
    const/16 v26, 0x0

    .line 371
    .local v26, "titleTextAppearance":I
    const/16 v27, 0x0

    .line 372
    .local v27, "titleTextColor":I
    const/16 v28, 0x0

    .line 373
    .local v28, "titleTextColorDefined":Z
    const/4 v3, 0x0

    .line 374
    .local v3, "actionBackground":I
    const/4 v4, 0x0

    .line 375
    .local v4, "actionRipple":I
    const/4 v5, 0x0

    .line 376
    .local v5, "actionTextAppearance":I
    const/4 v6, 0x0

    .line 377
    .local v6, "actionTextColors":Landroid/content/res/ColorStateList;
    const/16 v22, 0x0

    .line 378
    .local v22, "positiveActionBackground":I
    const/16 v23, 0x0

    .line 379
    .local v23, "positiveActionRipple":I
    const/16 v24, 0x0

    .line 380
    .local v24, "positiveActionTextAppearance":I
    const/16 v25, 0x0

    .line 381
    .local v25, "positiveActionTextColors":Landroid/content/res/ColorStateList;
    const/4 v14, 0x0

    .line 382
    .local v14, "negativeActionBackground":I
    const/4 v15, 0x0

    .line 383
    .local v15, "negativeActionRipple":I
    const/16 v16, 0x0

    .line 384
    .local v16, "negativeActionTextAppearance":I
    const/16 v17, 0x0

    .line 385
    .local v17, "negativeActionTextColors":Landroid/content/res/ColorStateList;
    const/16 v18, 0x0

    .line 386
    .local v18, "neutralActionBackground":I
    const/16 v19, 0x0

    .line 387
    .local v19, "neutralActionRipple":I
    const/16 v20, 0x0

    .line 388
    .local v20, "neutralActionTextAppearance":I
    const/16 v21, 0x0

    .line 390
    .local v21, "neutralActionTextColors":Landroid/content/res/ColorStateList;
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v9

    .end local v6    # "actionTextColors":Landroid/content/res/ColorStateList;
    .end local v17    # "negativeActionTextColors":Landroid/content/res/ColorStateList;
    .end local v21    # "neutralActionTextColors":Landroid/content/res/ColorStateList;
    .end local v25    # "positiveActionTextColors":Landroid/content/res/ColorStateList;
    .local v9, "count":I
    :goto_0
    if-ge v10, v9, :cond_1f

    .line 391
    invoke-virtual {v2, v10}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    .line 393
    .local v7, "attr":I
    if-nez v7, :cond_1

    .line 394
    const/16 v29, -0x2

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v13

    .line 395
    const/4 v11, 0x1

    .line 390
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 396
    :cond_1
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v7, v0, :cond_2

    .line 397
    const/16 v29, -0x2

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v12

    .line 398
    const/4 v11, 0x1

    goto :goto_1

    .line 399
    :cond_2
    const/16 v29, 0x8

    move/from16 v0, v29

    if-ne v7, v0, :cond_3

    .line 400
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->maxWidth(I)Lcom/zeusis/widget/dialog/BaseDialog;

    goto :goto_1

    .line 401
    :cond_3
    const/16 v29, 0x9

    move/from16 v0, v29

    if-ne v7, v0, :cond_4

    .line 402
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->maxHeight(I)Lcom/zeusis/widget/dialog/BaseDialog;

    goto :goto_1

    .line 403
    :cond_4
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v7, v0, :cond_5

    .line 404
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->dimAmount(F)Lcom/zeusis/widget/dialog/BaseDialog;

    goto :goto_1

    .line 405
    :cond_5
    const/16 v29, 0x3

    move/from16 v0, v29

    if-ne v7, v0, :cond_6

    .line 406
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->backgroundColor(I)Lcom/zeusis/widget/dialog/BaseDialog;

    goto :goto_1

    .line 415
    :cond_6
    const/16 v29, 0xa

    move/from16 v0, v29

    if-ne v7, v0, :cond_7

    .line 416
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v26

    goto :goto_1

    .line 417
    :cond_7
    const/16 v29, 0xb

    move/from16 v0, v29

    if-ne v7, v0, :cond_8

    .line 418
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v27

    .line 419
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 420
    :cond_8
    const/16 v29, 0xc

    move/from16 v0, v29

    if-ne v7, v0, :cond_9

    .line 421
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    goto/16 :goto_1

    .line 422
    :cond_9
    const/16 v29, 0xd

    move/from16 v0, v29

    if-ne v7, v0, :cond_a

    .line 423
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    goto/16 :goto_1

    .line 424
    :cond_a
    const/16 v29, 0xe

    move/from16 v0, v29

    if-ne v7, v0, :cond_b

    .line 425
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    goto/16 :goto_1

    .line 426
    :cond_b
    const/16 v29, 0xf

    move/from16 v0, v29

    if-ne v7, v0, :cond_c

    .line 427
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .local v6, "actionTextColors":Landroid/content/res/ColorStateList;
    goto/16 :goto_1

    .line 428
    .end local v6    # "actionTextColors":Landroid/content/res/ColorStateList;
    :cond_c
    const/16 v29, 0x10

    move/from16 v0, v29

    if-ne v7, v0, :cond_d

    .line 429
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    goto/16 :goto_1

    .line 430
    :cond_d
    const/16 v29, 0x11

    move/from16 v0, v29

    if-ne v7, v0, :cond_e

    .line 431
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    goto/16 :goto_1

    .line 432
    :cond_e
    const/16 v29, 0x12

    move/from16 v0, v29

    if-ne v7, v0, :cond_f

    .line 433
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    goto/16 :goto_1

    .line 434
    :cond_f
    const/16 v29, 0x13

    move/from16 v0, v29

    if-ne v7, v0, :cond_10

    .line 435
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v25

    .local v25, "positiveActionTextColors":Landroid/content/res/ColorStateList;
    goto/16 :goto_1

    .line 436
    .end local v25    # "positiveActionTextColors":Landroid/content/res/ColorStateList;
    :cond_10
    const/16 v29, 0x14

    move/from16 v0, v29

    if-ne v7, v0, :cond_11

    .line 437
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    goto/16 :goto_1

    .line 438
    :cond_11
    const/16 v29, 0x15

    move/from16 v0, v29

    if-ne v7, v0, :cond_12

    .line 439
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    goto/16 :goto_1

    .line 440
    :cond_12
    const/16 v29, 0x16

    move/from16 v0, v29

    if-ne v7, v0, :cond_13

    .line 441
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    goto/16 :goto_1

    .line 442
    :cond_13
    const/16 v29, 0x17

    move/from16 v0, v29

    if-ne v7, v0, :cond_14

    .line 443
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    .local v17, "negativeActionTextColors":Landroid/content/res/ColorStateList;
    goto/16 :goto_1

    .line 444
    .end local v17    # "negativeActionTextColors":Landroid/content/res/ColorStateList;
    :cond_14
    const/16 v29, 0x18

    move/from16 v0, v29

    if-ne v7, v0, :cond_15

    .line 445
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    goto/16 :goto_1

    .line 446
    :cond_15
    const/16 v29, 0x19

    move/from16 v0, v29

    if-ne v7, v0, :cond_16

    .line 447
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    goto/16 :goto_1

    .line 448
    :cond_16
    const/16 v29, 0x1a

    move/from16 v0, v29

    if-ne v7, v0, :cond_17

    .line 449
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    goto/16 :goto_1

    .line 450
    :cond_17
    const/16 v29, 0x1b

    move/from16 v0, v29

    if-ne v7, v0, :cond_18

    .line 451
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v21

    .local v21, "neutralActionTextColors":Landroid/content/res/ColorStateList;
    goto/16 :goto_1

    .line 452
    .end local v21    # "neutralActionTextColors":Landroid/content/res/ColorStateList;
    :cond_18
    const/16 v29, 0x1e

    move/from16 v0, v29

    if-ne v7, v0, :cond_19

    .line 453
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->inAnimation(I)Lcom/zeusis/widget/dialog/BaseDialog;

    goto/16 :goto_1

    .line 454
    :cond_19
    const/16 v29, 0x1f

    move/from16 v0, v29

    if-ne v7, v0, :cond_1a

    .line 455
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->outAnimation(I)Lcom/zeusis/widget/dialog/BaseDialog;

    goto/16 :goto_1

    .line 456
    :cond_1a
    const/16 v29, 0x1c

    move/from16 v0, v29

    if-ne v7, v0, :cond_1b

    .line 457
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->dividerColor(I)Lcom/zeusis/widget/dialog/BaseDialog;

    goto/16 :goto_1

    .line 458
    :cond_1b
    const/16 v29, 0x1d

    move/from16 v0, v29

    if-ne v7, v0, :cond_1c

    .line 459
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->dividerHeight(I)Lcom/zeusis/widget/dialog/BaseDialog;

    goto/16 :goto_1

    .line 460
    :cond_1c
    const/16 v29, 0x20

    move/from16 v0, v29

    if-ne v7, v0, :cond_1d

    .line 461
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->cancelable(Z)Lcom/zeusis/widget/dialog/BaseDialog;

    goto/16 :goto_1

    .line 462
    :cond_1d
    const/16 v29, 0x21

    move/from16 v0, v29

    if-ne v7, v0, :cond_1e

    .line 463
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->canceledOnTouchOutside(Z)Lcom/zeusis/widget/dialog/BaseDialog;

    goto/16 :goto_1

    .line 464
    :cond_1e
    const/16 v29, 0x22

    move/from16 v0, v29

    if-ne v7, v0, :cond_0

    .line 465
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v2, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->setShadeAnimation(Z)Lcom/zeusis/widget/dialog/BaseDialog;

    goto/16 :goto_1

    .line 468
    .end local v7    # "attr":I
    :cond_1f
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 470
    if-eqz v11, :cond_20

    .line 471
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/zeusis/widget/dialog/BaseDialog;->layoutParams(II)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 473
    :cond_20
    if-eqz v26, :cond_21

    .line 474
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->titleTextAppearance(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 476
    :cond_21
    if-eqz v28, :cond_22

    .line 477
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->titleColor(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 479
    :cond_22
    if-eqz v3, :cond_23

    .line 480
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zeusis/widget/dialog/BaseDialog;->actionBackground(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 488
    :cond_23
    if-eqz v6, :cond_24

    .line 489
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/zeusis/widget/dialog/BaseDialog;->actionTextColor(Landroid/content/res/ColorStateList;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 491
    :cond_24
    if-eqz v22, :cond_25

    .line 492
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->positiveActionBackground(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 497
    :cond_25
    if-eqz v24, :cond_26

    .line 498
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->positiveActionTextAppearance(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 500
    :cond_26
    if-eqz v25, :cond_27

    .line 501
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->positiveActionTextColor(Landroid/content/res/ColorStateList;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 503
    :cond_27
    if-eqz v14, :cond_28

    .line 504
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/zeusis/widget/dialog/BaseDialog;->negativeActionBackground(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 512
    :cond_28
    if-eqz v17, :cond_29

    .line 513
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->negativeActionTextColor(Landroid/content/res/ColorStateList;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 515
    :cond_29
    if-eqz v18, :cond_2a

    .line 516
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->neutralActionBackground(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 524
    :cond_2a
    if-eqz v21, :cond_2b

    .line 525
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->neutralActionTextColor(Landroid/content/res/ColorStateList;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 527
    :cond_2b
    return-object p0
.end method

.method public backgroundColor(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 650
    return-object p0
.end method

.method public cancelable(Z)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 0
    .param p1, "cancelable"    # Z

    .prologue
    .line 1309
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1310
    iput-boolean p1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mCancelable:Z

    .line 1311
    return-object p0
.end method

.method public canceledOnTouchOutside(Z)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 0
    .param p1, "cancel"    # Z

    .prologue
    .line 1323
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1324
    iput-boolean p1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mCanceledOnTouchOutside:Z

    .line 1325
    return-object p0
.end method

.method public clearContent()Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 577
    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->title(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 578
    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->positiveAction(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 579
    invoke-virtual {p0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->positiveActionClickListener(Landroid/view/View$OnClickListener;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 580
    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->negativeAction(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 581
    invoke-virtual {p0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->negativeActionClickListener(Landroid/view/View$OnClickListener;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 582
    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->neutralAction(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 583
    invoke-virtual {p0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->neutralActionClickListener(Landroid/view/View$OnClickListener;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 584
    invoke-virtual {p0, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->contentView(Landroid/view/View;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 585
    return-object p0
.end method

.method public contentMargin(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "margin"    # I

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    invoke-virtual {v0, p1}, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->setContentMargin(I)V

    .line 1336
    return-object p0
.end method

.method public contentMargin(IIII)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->setContentMargin(IIII)V

    .line 1350
    return-object p0
.end method

.method public contentView(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 3
    .param p1, "layoutId"    # I

    .prologue
    .line 1295
    if-nez p1, :cond_0

    .line 1296
    return-object p0

    .line 1298
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1299
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->contentView(Landroid/view/View;)Lcom/zeusis/widget/dialog/BaseDialog;

    move-result-object v1

    return-object v1
.end method

.method public contentView(Landroid/view/View;)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mContent:Landroid/view/View;

    if-eq v0, p1, :cond_1

    .line 1211
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1214
    :cond_0
    iput-object p1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mContent:Landroid/view/View;

    .line 1217
    :cond_1
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mContent:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1218
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1220
    :cond_2
    return-object p0
.end method

.method public dimAmount(F)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 4
    .param p1, "amount"    # F

    .prologue
    const/4 v3, 0x2

    .line 630
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 631
    .local v1, "window":Landroid/view/Window;
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 632
    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 633
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 634
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 635
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 638
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    return-object p0

    .line 637
    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 1467
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mDismissPending:Z

    if-eqz v1, :cond_1

    .line 1468
    :cond_0
    return-void

    .line 1470
    :cond_1
    iget v1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mOutAnimationId:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mContainer:Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;

    if-eqz v1, :cond_2

    .line 1471
    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mContainer:Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mOutAnimationId:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1472
    .local v0, "anim":Landroid/view/animation/Animation;
    new-instance v1, Lcom/zeusis/widget/dialog/BaseDialog$4;

    invoke-direct {v1, p0}, Lcom/zeusis/widget/dialog/BaseDialog$4;-><init>(Lcom/zeusis/widget/dialog/BaseDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1490
    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1491
    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mContainer:Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->-wrap2(Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;)V

    .line 1466
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :goto_0
    return-void

    .line 1493
    :cond_2
    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mDismissAction:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public dismissImmediately()V
    .locals 2

    .prologue
    .line 1459
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1461
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1462
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mDismissAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1458
    :cond_0
    return-void
.end method

.method public dividerColor(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 696
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    invoke-virtual {v0, p1}, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->setDividerColor(I)V

    .line 697
    return-object p0
.end method

.method public dividerHeight(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 707
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    invoke-virtual {v0, p1}, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->setDividerHeight(I)V

    .line 708
    return-object p0
.end method

.method public getNegativeAction()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    return-object v0
.end method

.method public getNeutralAction()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    return-object v0
.end method

.method public getPositiveAction()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    return-object v0
.end method

.method protected hasActionButton()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 358
    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 358
    :cond_0
    :goto_0
    return v0

    .line 360
    :cond_1
    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected hasMessage(Z)V
    .locals 0
    .param p1, "mess"    # Z

    .prologue
    .line 1404
    iput-boolean p1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mHasMessage:Z

    .line 1403
    return-void
.end method

.method protected hasTitle()Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public inAnimation(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 1167
    iput p1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mInAnimationId:I

    .line 1168
    return-object p0
.end method

.method public layoutParams(II)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 596
    iput p1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mLayoutWidth:I

    .line 597
    iput p2, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mLayoutHeight:I

    .line 598
    return-object p0
.end method

.method public maxHeight(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 619
    iput p1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mMaxHeight:I

    .line 620
    return-object p0
.end method

.method public maxWidth(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 608
    iput p1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mMaxWidth:I

    .line 609
    return-object p0
.end method

.method public negativeAction(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 968
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->negativeAction(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/BaseDialog;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public negativeAction(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 2
    .param p1, "action"    # Ljava/lang/CharSequence;

    .prologue
    .line 952
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 953
    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 954
    return-object p0

    .line 953
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public negativeActionBackground(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 989
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->negativeActionBackground(Landroid/graphics/drawable/Drawable;)Lcom/zeusis/widget/dialog/BaseDialog;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public negativeActionBackground(Landroid/graphics/drawable/Drawable;)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 978
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 979
    return-object p0
.end method

.method public negativeActionClickListener(Landroid/view/View$OnClickListener;)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1044
    return-object p0
.end method

.method public negativeActionRipple(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1000
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->negativeActionBackground(Landroid/graphics/drawable/Drawable;)Lcom/zeusis/widget/dialog/BaseDialog;

    move-result-object v0

    return-object v0
.end method

.method public negativeActionTextAppearance(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1011
    return-object p0
.end method

.method public negativeActionTextColor(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1033
    return-object p0
.end method

.method public negativeActionTextColor(Landroid/content/res/ColorStateList;)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1022
    return-object p0
.end method

.method public neutralAction(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1070
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->neutralAction(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/BaseDialog;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public neutralAction(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 2
    .param p1, "action"    # Ljava/lang/CharSequence;

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1055
    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1056
    return-object p0

    .line 1055
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public neutralActionBackground(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1091
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->neutralActionBackground(Landroid/graphics/drawable/Drawable;)Lcom/zeusis/widget/dialog/BaseDialog;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public neutralActionBackground(Landroid/graphics/drawable/Drawable;)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1081
    return-object p0
.end method

.method public neutralActionClickListener(Landroid/view/View$OnClickListener;)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1146
    return-object p0
.end method

.method public neutralActionRipple(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1102
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->neutralActionBackground(Landroid/graphics/drawable/Drawable;)Lcom/zeusis/widget/dialog/BaseDialog;

    move-result-object v0

    return-object v0
.end method

.method public neutralActionTextAppearance(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1113
    return-object p0
.end method

.method public neutralActionTextColor(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1135
    return-object p0
.end method

.method public neutralActionTextColor(Landroid/content/res/ColorStateList;)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1124
    return-object p0
.end method

.method public noActionButton()Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1282
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1283
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mNegativeAction:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1284
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mNeutralAction:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1285
    return-object p0
.end method

.method protected onCreate()V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1429
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 1430
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mContainer:Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;

    if-eqz v0, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mContainer:Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;

    invoke-static {v0}, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->-wrap0(Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;)V

    .line 1433
    :cond_0
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/BaseDialog;->checkItems()V

    .line 1434
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1435
    iget v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mInAnimationId:I

    if-eqz v0, :cond_1

    .line 1436
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/zeusis/widget/dialog/BaseDialog$3;

    invoke-direct {v1, p0}, Lcom/zeusis/widget/dialog/BaseDialog$3;-><init>(Lcom/zeusis/widget/dialog/BaseDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1428
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1449
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 1450
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mContainer:Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;

    if-eqz v0, :cond_0

    .line 1451
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mContainer:Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;

    invoke-static {v0}, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->-wrap1(Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;)V

    .line 1448
    :cond_0
    return-void
.end method

.method public outAnimation(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 1178
    iput p1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mOutAnimationId:I

    .line 1179
    return-object p0
.end method

.method public positiveAction(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 866
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->positiveAction(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/BaseDialog;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public positiveAction(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 2
    .param p1, "action"    # Ljava/lang/CharSequence;

    .prologue
    .line 850
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 852
    return-object p0

    .line 851
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public positiveActionBackground(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 887
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->positiveActionBackground(Landroid/graphics/drawable/Drawable;)Lcom/zeusis/widget/dialog/BaseDialog;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public positiveActionBackground(Landroid/graphics/drawable/Drawable;)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 876
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 877
    return-object p0
.end method

.method public positiveActionClickListener(Landroid/view/View$OnClickListener;)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 941
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 942
    return-object p0
.end method

.method public positiveActionRipple(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 898
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->positiveActionBackground(Landroid/graphics/drawable/Drawable;)Lcom/zeusis/widget/dialog/BaseDialog;

    move-result-object v0

    return-object v0
.end method

.method public positiveActionTextAppearance(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 908
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 909
    return-object p0
.end method

.method public positiveActionTextColor(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 930
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 931
    return-object p0
.end method

.method public positiveActionTextColor(Landroid/content/res/ColorStateList;)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 919
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mPositiveAction:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 920
    return-object p0
.end method

.method public resetContentMarginTop(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "top"    # I

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    invoke-virtual {v0, p1}, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->resetContentMarginTop(I)V

    .line 1365
    return-object p0
.end method

.method public resetTitleMarginBottom(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "bottom"    # I

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    invoke-virtual {v0, p1}, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->resetTitleMarginBottom(I)V

    .line 1360
    return-object p0
.end method

.method public setActionButtonVertical(Z)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 0
    .param p1, "vertical"    # Z

    .prologue
    .line 1199
    iput-boolean p1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mWantActionVertical:Z

    .line 1200
    return-object p0
.end method

.method public setActionMarginTop(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "top"    # I

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    invoke-virtual {v0, p1}, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->setActionMarginTop(I)V

    .line 1370
    return-object p0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 568
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 567
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 563
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/zeusis/widget/dialog/BaseDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 562
    return-void
.end method

.method public setCancelable(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1375
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/dialog/BaseDialog;->cancelable(Z)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 1374
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0
    .param p1, "cancel"    # Z

    .prologue
    .line 1380
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/dialog/BaseDialog;->canceledOnTouchOutside(Z)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 1379
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .param p1, "layoutId"    # I

    .prologue
    .line 1390
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/dialog/BaseDialog;->contentView(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 1389
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1385
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/dialog/BaseDialog;->contentView(Landroid/view/View;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 1384
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1395
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/dialog/BaseDialog;->contentView(Landroid/view/View;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 1394
    return-void
.end method

.method public setIcon(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 1230
    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog;->icon:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    .line 1231
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog;->icon:Landroid/widget/ImageView;

    .line 1233
    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x20

    invoke-static {v2, v3}, Lcom/zeusis/widget/dialog/BaseDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    .line 1236
    .local v0, "area":I
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1237
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1238
    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog;->icon:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1241
    .end local v0    # "area":I
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1242
    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    iget-object v3, p0, Lcom/zeusis/widget/dialog/BaseDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1243
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1253
    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog;->icon:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    .line 1254
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog;->icon:Landroid/widget/ImageView;

    .line 1255
    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mContext:Landroid/content/Context;

    const/16 v3, 0x20

    invoke-static {v2, v3}, Lcom/zeusis/widget/dialog/BaseDialog;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    .line 1256
    .local v0, "area":I
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1257
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1258
    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog;->icon:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1260
    .end local v0    # "area":I
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1261
    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    iget-object v3, p0, Lcom/zeusis/widget/dialog/BaseDialog;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1262
    return-object p0
.end method

.method public setShadeAnimation(Z)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mContainer:Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;

    invoke-virtual {v0, p1}, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->setShadeOn(Z)V

    .line 1273
    return-object p0
.end method

.method public setTitle(I)V
    .locals 0
    .param p1, "titleId"    # I

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/dialog/BaseDialog;->title(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 739
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 735
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/dialog/BaseDialog;->title(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 734
    return-void
.end method

.method public showDivider(Z)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    invoke-virtual {v0, p1}, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->setShowDivider(Z)V

    .line 1190
    return-object p0
.end method

.method public showTitleDivider(Z)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    invoke-virtual {v0, p1}, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->setShowTitleDivider(Z)V

    .line 1195
    return-object p0
.end method

.method public title(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 730
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zeusis/widget/dialog/BaseDialog;->title(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/BaseDialog;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public title(Ljava/lang/CharSequence;)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 718
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mTitle:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 720
    return-object p0

    .line 719
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public titleColor(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 750
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 751
    return-object p0
.end method

.method public titleMargin(IIII)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog;->mCardView:Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;->setTitleMargin(IIII)V

    .line 1355
    return-object p0
.end method

.method public titleTextAppearance(I)Lcom/zeusis/widget/dialog/BaseDialog;
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 762
    return-object p0
.end method
