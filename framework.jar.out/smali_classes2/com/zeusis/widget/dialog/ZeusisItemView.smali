.class public Lcom/zeusis/widget/dialog/ZeusisItemView;
.super Landroid/view/ViewGroup;
.source "ZeusisItemView.java"

# interfaces
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0xc8L

.field private static final EDIT_STATE_ADAPTER_IN:S = 0x3s

.field private static final EDIT_STATE_ADAPTER_OUT:S = 0x4s

.field private static final EDIT_STATE_FALSE:S = 0x0s

.field private static final EDIT_STATE_FUNCTION_IN:S = 0x1s

.field private static final EDIT_STATE_FUNCTION_OUT:S = 0x2s

.field public static final ICON_SIZE_BIG:I = 0x3

.field public static final ICON_SIZE_MIDDLE:I = 0x1

.field public static final ICON_SIZE_SMALL:I = 0x2

.field private static final PROPERTY_NAME_ALPHA:Ljava/lang/String; = "alpha"

.field private static final PROPERTY_NAME_WIDTH:Ljava/lang/String; = "width"

.field public static TYPEFACE_NSHL:Landroid/graphics/Typeface; = null

.field public static TYPEFACE_NSHR:Landroid/graphics/Typeface; = null

.field public static final WIDGET_STYLE_CHECKBOX:I = 0x3

.field public static final WIDGET_STYLE_IMAGE:I = 0x1

.field public static final WIDGET_STYLE_NONE:I = 0x0

.field public static final WIDGET_STYLE_RADIO:I = 0x2

.field public static final WIDGET_STYLE_SWITCH:I = 0x4


# instance fields
.field private mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mActivatedStateSupported:Z

.field private mAdjustSelectionBoundsEnabled:Z

.field private mBoundsWithoutHeader:Landroid/graphics/Rect;

.field private mCheckBox:Landroid/widget/CompoundButton;

.field private mContext:Landroid/content/Context;

.field private mEditState:S

.field private mGapBetweenPrimaryAndSecondary:I

.field private mGapBetweenPrimaryImageAndText:I

.field private mGapBetweenPrimaryTextAndLabel:I

.field private mGapBetweenPrimaryTextAndSummary:I

.field private mGapBetweenRightImageAndText:I

.field private mHasSetPaddingLeft:Z

.field private mHeaderMarginTop:I

.field private mHeaderTextColor:I

.field private mHeaderTextSize:I

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderViewHeight:I

.field private mHideMultiChoiceAnimation:Landroid/animation/ValueAnimator;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsSectionHeaderEnabled:Z

.field private mLabelTextPadding:I

.field private mLabelView:Landroid/widget/TextView;

.field private mLeftIcon:Landroid/widget/ImageView;

.field private mLeftIconSize:I

.field private mLeftIconSizeStyle:I

.field private mMultiChoiceView:Landroid/widget/CheckBox;

.field private mMultiChoiceViewWidth:I

.field private mOnDividerInsetListener:Lcom/zeusis/widget/dialog/OnDividerInsetListener;

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPreferredHeight:I

.field private mPresenceIcon:Landroid/widget/ImageView;

.field private mPrimaryTextColor:I

.field private mPrimaryTextSize:I

.field private mPrimaryTextView:Landroid/widget/TextView;

.field private mPrimaryTextViewHeight:I

.field private mRadioButton:Landroid/widget/CompoundButton;

.field private mRightIcon:Landroid/widget/ImageView;

.field private mRightIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mRightIconSize:I

.field private mRightWidget:Landroid/view/View;

.field private mRightWidgetStyle:I

.field private mSecondaryText:Ljava/lang/CharSequence;

.field private mSecondaryTextColor:I

.field private mSecondaryTextSize:I

.field private mSecondaryTextView:Landroid/widget/TextView;

.field private mSecondaryTextViewHeight:I

.field private mShowMultiChoiceAnimation:Landroid/animation/ValueAnimator;

.field private mSnippetMaxWidth:I

.field private mSnippetRightCenterView:Landroid/widget/TextView;

.field private mSnippetRightTopView:Landroid/widget/TextView;

.field private mSnippetTextColor:I

.field private mSnippetTextSize:I

.field private mStatusMarginRight:I

.field private mStatusResIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusView:Landroid/widget/TextView;

.field private mSummaryView:Landroid/widget/TextView;

.field private mSwitchButton:Landroid/widget/CompoundButton;

.field private mTextMarginBottom:I

.field private mTextMarginTop:I

.field private mViewCheckable:Landroid/widget/Checkable;

.field private mWidth12dp:I

.field private mWidth16dp:I

.field private mWidth20dp:I


# direct methods
.method static synthetic -get0(Lcom/zeusis/widget/dialog/ZeusisItemView;)S
    .locals 1

    iget-short v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mEditState:S

    return v0
.end method

.method static synthetic -get1(Lcom/zeusis/widget/dialog/ZeusisItemView;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get2(Lcom/zeusis/widget/dialog/ZeusisItemView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightWidget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/zeusis/widget/dialog/ZeusisItemView;S)S
    .locals 0

    iput-short p1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mEditState:S

    return p1
.end method

.method static synthetic -set1(Lcom/zeusis/widget/dialog/ZeusisItemView;I)I
    .locals 0

    iput p1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceViewWidth:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 152
    :try_start_0
    const-string/jumbo v1, "system/fonts/Zeusis_NotoSansHans-Light.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Lcom/zeusis/widget/dialog/ZeusisItemView;->TYPEFACE_NSHL:Landroid/graphics/Typeface;

    .line 153
    const-string/jumbo v1, "system/fonts/Zeusis_NotoSansHans-Regular.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Lcom/zeusis/widget/dialog/ZeusisItemView;->TYPEFACE_NSHR:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 154
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_0
    move-exception v0

    .line 155
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zeusis/widget/dialog/ZeusisItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 164
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    iput v8, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPreferredHeight:I

    .line 118
    iput-boolean v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mAdjustSelectionBoundsEnabled:Z

    .line 119
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    .line 124
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mStatusResIds:Ljava/util/ArrayList;

    .line 165
    iput-object p1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mContext:Landroid/content/Context;

    .line 166
    const/4 v3, 0x0

    .line 167
    .local v3, "primaryText":Ljava/lang/String;
    const/4 v4, 0x0

    .line 168
    .local v4, "secondaryText":Ljava/lang/String;
    const/4 v1, 0x0

    .line 169
    .local v1, "headerText":Ljava/lang/String;
    const/4 v2, 0x0

    .line 171
    .local v2, "leftDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/internal/R$styleable;->ZeusisItemView:[I

    invoke-virtual {v5, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 173
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 174
    .local v2, "leftDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 175
    const/4 v5, 0x7

    const/4 v6, 0x3

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIconSizeStyle:I

    .line 176
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightWidgetStyle:I

    .line 177
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 179
    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "headerText":Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "primaryText":Ljava/lang/String;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, "secondaryText":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "headerText":Ljava/lang/String;
    .end local v2    # "leftDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "primaryText":Ljava/lang/String;
    .end local v4    # "secondaryText":Ljava/lang/String;
    :cond_0
    const v5, 0x106011f

    invoke-static {p1, v5}, Lcom/zeusis/widget/dialog/ZeusisItemView;->getColor(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextColor:I

    .line 188
    const v5, 0x1060120

    invoke-static {p1, v5}, Lcom/zeusis/widget/dialog/ZeusisItemView;->getColor(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryTextColor:I

    .line 189
    const v5, 0x1060121

    invoke-static {p1, v5}, Lcom/zeusis/widget/dialog/ZeusisItemView;->getColor(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetTextColor:I

    .line 190
    const v5, 0x1060122

    invoke-static {p1, v5}, Lcom/zeusis/widget/dialog/ZeusisItemView;->getColor(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHeaderTextColor:I

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105017a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPreferredHeight:I

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105017c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHeaderViewHeight:I

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105016e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextSize:I

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105016f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryTextSize:I

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050173

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetTextSize:I

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105017d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHeaderTextSize:I

    .line 199
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105016b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIconSize:I

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v7, v6, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mWidth16dp:I

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v7, v10, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mWidth12dp:I

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v7, v6, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mWidth20dp:I

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v7, v10, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHeaderMarginTop:I

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v7, v6, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mStatusMarginRight:I

    .line 209
    iget v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mWidth20dp:I

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPaddingRight:I

    .line 210
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->resetPaddingAndGap()V

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050175

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mTextMarginTop:I

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050176

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mTextMarginBottom:I

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050174

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetMaxWidth:I

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050178

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mGapBetweenRightImageAndText:I

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v7, v6, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mGapBetweenPrimaryTextAndLabel:I

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v7, v6, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mGapBetweenPrimaryTextAndSummary:I

    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v7, v9, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mGapBetweenPrimaryAndSecondary:I

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v7, v9, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLabelTextPadding:I

    .line 240
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 241
    invoke-virtual {p0, v1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->setHeaderView(Ljava/lang/CharSequence;)V

    .line 243
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 244
    invoke-virtual {p0, v3}, Lcom/zeusis/widget/dialog/ZeusisItemView;->setPrimaryTextView(Ljava/lang/CharSequence;)V

    .line 246
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 247
    invoke-virtual {p0, v4}, Lcom/zeusis/widget/dialog/ZeusisItemView;->setSecondaryTextView(Ljava/lang/CharSequence;)V

    .line 249
    :cond_3
    if-eqz v2, :cond_4

    .line 250
    invoke-virtual {p0, v2}, Lcom/zeusis/widget/dialog/ZeusisItemView;->setLeftIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    :cond_4
    iget-object v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 254
    iget-object v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 257
    :cond_5
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Landroid/view/View;->setLayoutDirection(I)V

    .line 258
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 259
    iget v5, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightWidgetStyle:I

    invoke-direct {p0, v5}, Lcom/zeusis/widget/dialog/ZeusisItemView;->createRightWidget(I)V

    .line 163
    return-void
.end method

.method private createCheckBox()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1203
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mCheckBox:Landroid/widget/CompoundButton;

    if-nez v0, :cond_1

    .line 1204
    new-instance v0, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;

    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mCheckBox:Landroid/widget/CompoundButton;

    .line 1205
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 1206
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 1207
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1211
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 1212
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1202
    :cond_1
    return-void
.end method

.method private createHideMultiChoiceAnimator()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 300
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHideMultiChoiceAnimation:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    .line 301
    new-array v1, v6, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v2, "width"

    new-array v3, v6, [I

    iget-object v4, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    aput v4, v3, v5

    aput v5, v3, v7

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, "alpha"

    new-array v3, v6, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHideMultiChoiceAnimation:Landroid/animation/ValueAnimator;

    .line 302
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHideMultiChoiceAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 306
    new-instance v0, Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;

    invoke-direct {v0, p0, v5}, Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;-><init>(Lcom/zeusis/widget/dialog/ZeusisItemView;Z)V

    .line 307
    .local v0, "multiChoiceAnimator":Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHideMultiChoiceAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 308
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHideMultiChoiceAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 299
    .end local v0    # "multiChoiceAnimator":Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;
    :cond_0
    return-void

    .line 301
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private createLeftIcon()V
    .locals 2

    .prologue
    .line 917
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 918
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIcon:Landroid/widget/ImageView;

    .line 919
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 920
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 921
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 916
    :cond_0
    return-void
.end method

.method private createMultiChoiceView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1250
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 1251
    new-instance v0, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;

    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zeusis/widget/checkbox/ZeusisCheckbox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    .line 1252
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 1253
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 1254
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1256
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1258
    :cond_0
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mViewCheckable:Landroid/widget/Checkable;

    .line 1249
    return-void
.end method

.method private createRadioButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1188
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRadioButton:Landroid/widget/CompoundButton;

    if-nez v0, :cond_1

    .line 1189
    new-instance v0, Lcom/zeusis/widget/radio/ZeusisRadioButton;

    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zeusis/widget/radio/ZeusisRadioButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRadioButton:Landroid/widget/CompoundButton;

    .line 1190
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRadioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 1191
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRadioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 1192
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRadioButton:Landroid/widget/CompoundButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1196
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 1197
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1187
    :cond_1
    return-void
.end method

.method private createRightIcon()V
    .locals 2

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 1235
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIcon:Landroid/widget/ImageView;

    .line 1236
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1237
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1238
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1239
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1243
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 1244
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1233
    :cond_1
    return-void
.end method

.method private createRightWidget(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 1163
    packed-switch p1, :pswitch_data_0

    .line 1162
    :goto_0
    :pswitch_0
    return-void

    .line 1165
    :pswitch_1
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->createRightIcon()V

    goto :goto_0

    .line 1169
    :pswitch_2
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->createRadioButton()V

    goto :goto_0

    .line 1173
    :pswitch_3
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->createCheckBox()V

    goto :goto_0

    .line 1163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private createShowMultiChoiceAnimator()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 287
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mShowMultiChoiceAnimation:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    .line 288
    new-array v1, v7, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v2, "width"

    new-array v3, v7, [I

    aput v5, v3, v5

    iget-object v4, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    aput v4, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, "alpha"

    new-array v3, v7, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mShowMultiChoiceAnimation:Landroid/animation/ValueAnimator;

    .line 289
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mShowMultiChoiceAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 293
    new-instance v0, Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;

    invoke-direct {v0, p0, v6}, Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;-><init>(Lcom/zeusis/widget/dialog/ZeusisItemView;Z)V

    .line 294
    .local v0, "multiChoiceAnimator":Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mShowMultiChoiceAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 295
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mShowMultiChoiceAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 286
    .end local v0    # "multiChoiceAnimator":Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;
    :cond_0
    return-void

    .line 288
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private drawSecondaryText()V
    .locals 2

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->getSecondaryTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 715
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mStatusResIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 713
    :goto_0
    return-void

    .line 718
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 738
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static getColor(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 1305
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 1306
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0

    .line 1308
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method private getTextEllipsis()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .prologue
    .line 975
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method private hideAllRightView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1148
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mCheckBox:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 1152
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1154
    :cond_1
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRadioButton:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_2

    .line 1155
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRadioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1157
    :cond_2
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSwitchButton:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_3

    .line 1158
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSwitchButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1147
    :cond_3
    return-void
.end method

.method private layoutRightView(Landroid/view/View;III)I
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "topBound"    # I
    .param p3, "rightBound"    # I
    .param p4, "bottomBound"    # I

    .prologue
    .line 639
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 640
    .local v0, "iconHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 641
    .local v3, "iconWidth":I
    add-int v4, p4, p2

    sub-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    .line 642
    .local v2, "iconTopBound":I
    sub-int v1, p3, v3

    .line 643
    .local v1, "iconLeftBound":I
    add-int v4, v2, v0

    invoke-virtual {p1, v1, v2, p3, v4}, Landroid/view/View;->layout(IIII)V

    .line 644
    iget v4, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mGapBetweenRightImageAndText:I

    sub-int v4, v1, v4

    return v4
.end method

.method private resetPaddingAndGap()V
    .locals 3

    .prologue
    const v1, 0x105016d

    const v2, 0x105017a

    .line 318
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIconSizeStyle:I

    packed-switch v0, :pswitch_data_0

    .line 341
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIconSize:I

    .line 342
    iget-boolean v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHasSetPaddingLeft:Z

    if-nez v0, :cond_0

    .line 343
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mWidth20dp:I

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPaddingLeft:I

    .line 345
    :cond_0
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mWidth20dp:I

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mGapBetweenPrimaryImageAndText:I

    .line 346
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPreferredHeight:I

    .line 317
    :goto_0
    return-void

    .line 320
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105016b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIconSize:I

    .line 321
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mWidth20dp:I

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPaddingLeft:I

    .line 322
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mWidth20dp:I

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mGapBetweenPrimaryImageAndText:I

    .line 323
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPreferredHeight:I

    goto :goto_0

    .line 327
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105016c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIconSize:I

    .line 328
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mWidth16dp:I

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPaddingLeft:I

    .line 329
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mWidth16dp:I

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mGapBetweenPrimaryImageAndText:I

    .line 330
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPreferredHeight:I

    goto :goto_0

    .line 334
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIconSize:I

    .line 335
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mWidth20dp:I

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPaddingLeft:I

    .line 336
    iget v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mWidth20dp:I

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mGapBetweenPrimaryImageAndText:I

    .line 337
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105017b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPreferredHeight:I

    goto :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 748
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 747
    :goto_0
    return-void

    .line 751
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 752
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mAdjustSelectionBoundsEnabled:Z

    if-eqz v0, :cond_0

    .line 388
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 389
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 390
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 391
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 386
    :cond_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1292
    iget-boolean v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1296
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1291
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1271
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 1272
    iget-boolean v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1270
    :cond_0
    return-void
.end method

.method public getCheckBox()Landroid/widget/CompoundButton;
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mCheckBox:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method public getHeaderTextView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 761
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 762
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHeaderTextView:Landroid/widget/TextView;

    .line 763
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHeaderTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/zeusis/widget/dialog/ZeusisItemView;->TYPEFACE_NSHR:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 764
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 765
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHeaderTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 766
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHeaderTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 767
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHeaderTextSize:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 768
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 770
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLabelTextView()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 782
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLabelView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 783
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLabelView:Landroid/widget/TextView;

    .line 784
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLabelView:Landroid/widget/TextView;

    sget-object v1, Lcom/zeusis/widget/dialog/ZeusisItemView;->TYPEFACE_NSHR:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 785
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 786
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLabelView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 787
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 788
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLabelView:Landroid/widget/TextView;

    iget v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mWidth16dp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 789
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLabelView:Landroid/widget/TextView;

    iget v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 790
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 791
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLabelView:Landroid/widget/TextView;

    const v1, 0x10808ac

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 792
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLabelView:Landroid/widget/TextView;

    iget v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLabelTextPadding:I

    iget v2, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLabelTextPadding:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 793
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLabelView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 794
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/View;->setTextAlignment(I)V

    .line 795
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLabelView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLeftIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPrimaryTextView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 655
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 656
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextView:Landroid/widget/TextView;

    .line 657
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/zeusis/widget/dialog/ZeusisItemView;->TYPEFACE_NSHR:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 658
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 659
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 660
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 661
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextSize:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 664
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 665
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 666
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/View;->setTextAlignment(I)V

    .line 667
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050179

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 670
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRadioButton()Landroid/widget/CompoundButton;
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRadioButton:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method public getRightIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSecondaryTextView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 686
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 687
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryTextView:Landroid/widget/TextView;

    .line 688
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/zeusis/widget/dialog/ZeusisItemView;->TYPEFACE_NSHL:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 689
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 690
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryTextSize:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 691
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const v2, 0x3fa66666    # 1.3f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 692
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 695
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 700
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSnippetRightCenterView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 854
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightCenterView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 855
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightCenterView:Landroid/widget/TextView;

    .line 856
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightCenterView:Landroid/widget/TextView;

    sget-object v1, Lcom/zeusis/widget/dialog/ZeusisItemView;->TYPEFACE_NSHL:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 857
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightCenterView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 858
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightCenterView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 859
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightCenterView:Landroid/widget/TextView;

    iget v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 860
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightCenterView:Landroid/widget/TextView;

    iget v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetTextSize:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 863
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightCenterView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 864
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightCenterView:Landroid/widget/TextView;

    iget v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetMaxWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 869
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightCenterView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightCenterView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSnippetRightTopView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 833
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightTopView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 834
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightTopView:Landroid/widget/TextView;

    .line 835
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightTopView:Landroid/widget/TextView;

    sget-object v1, Lcom/zeusis/widget/dialog/ZeusisItemView;->TYPEFACE_NSHL:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 836
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightTopView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 837
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightTopView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 838
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightTopView:Landroid/widget/TextView;

    iget v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 839
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightTopView:Landroid/widget/TextView;

    iget v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetTextSize:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 842
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightTopView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 843
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightTopView:Landroid/widget/TextView;

    iget v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetMaxWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 848
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightTopView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightTopView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSummaryTextView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 805
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSummaryView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 806
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSummaryView:Landroid/widget/TextView;

    .line 807
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSummaryView:Landroid/widget/TextView;

    sget-object v1, Lcom/zeusis/widget/dialog/ZeusisItemView;->TYPEFACE_NSHL:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 808
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSummaryView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 809
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSummaryView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 810
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSummaryView:Landroid/widget/TextView;

    iget v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 811
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSummaryView:Landroid/widget/TextView;

    iget v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetTextSize:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 815
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSummaryView:Landroid/widget/TextView;

    iget v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetMaxWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 816
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSummaryView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSwitchButton()Landroid/widget/CompoundButton;
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSwitchButton:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method public hideRightWidget()V
    .locals 1

    .prologue
    .line 1143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightWidget:Landroid/view/View;

    .line 1144
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->hideAllRightView()V

    .line 1142
    return-void
.end method

.method public inMultiChoiceState(Z)V
    .locals 5
    .param p1, "inMultiChoice"    # Z

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 263
    if-eqz p1, :cond_1

    .line 264
    iget-short v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mEditState:S

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mEditState:S

    if-eq v0, v3, :cond_0

    .line 265
    iput-short v3, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mEditState:S

    .line 266
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->createMultiChoiceView()V

    .line 267
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceViewWidth:I

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-short v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mEditState:S

    if-eqz v0, :cond_0

    iget-short v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mEditState:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mEditState:S

    if-eq v0, v4, :cond_0

    .line 272
    iput-short v4, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mEditState:S

    .line 273
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mViewCheckable:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mViewCheckable:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isVisible(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 396
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 1284
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 1285
    iget-boolean v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1283
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 30
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 524
    sub-int v6, p5, p3

    .line 525
    .local v6, "height":I
    sub-int v24, p4, p2

    .line 528
    .local v24, "width":I
    const/16 v18, 0x0

    .line 529
    .local v18, "topBound":I
    move v5, v6

    .line 530
    .local v5, "bottomBound":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPaddingLeft:I

    .line 531
    .local v11, "leftBound":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPaddingRight:I

    move/from16 v25, v0

    sub-int v12, v24, v25

    .line 532
    .local v12, "rightBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v25

    if-eqz v25, :cond_b

    const/4 v13, 0x0

    .line 534
    .local v13, "singleLine":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHeaderMarginTop:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHeaderMarginTop:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v27, v27, v28

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v11, v1, v12, v2}, Landroid/view/View;->layout(IIII)V

    .line 536
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHeaderViewHeight:I

    move/from16 v25, v0

    add-int/lit8 v18, v25, 0x0

    .line 538
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 540
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mActivatedStateSupported:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isActivated()Z

    move-result v25

    if-eqz v25, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 544
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIcon:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIcon:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 546
    .local v7, "iconHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIcon:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 548
    .local v9, "iconWidth":I
    if-eqz v13, :cond_c

    .line 549
    add-int v25, v6, v18

    sub-int v25, v25, v7

    div-int/lit8 v8, v25, 0x2

    .line 554
    .local v8, "iconTopBound":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIcon:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    add-int v26, v11, v9

    add-int v27, v8, v7

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v11, v8, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 555
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mGapBetweenPrimaryImageAndText:I

    move/from16 v25, v0

    add-int v25, v25, v9

    add-int v11, v11, v25

    .line 558
    .end local v7    # "iconHeight":I
    .end local v8    # "iconTopBound":I
    .end local v9    # "iconWidth":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mOnDividerInsetListener:Lcom/zeusis/widget/dialog/OnDividerInsetListener;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mOnDividerInsetListener:Lcom/zeusis/widget/dialog/OnDividerInsetListener;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIcon:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v25

    if-eqz v25, :cond_d

    move/from16 v25, v11

    :goto_2
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/zeusis/widget/dialog/OnDividerInsetListener;->inset(IIII)V

    .line 560
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zeusis/widget/dialog/ZeusisItemView;->mOnDividerInsetListener:Lcom/zeusis/widget/dialog/OnDividerInsetListener;

    .line 563
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIcon:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIcon:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v12, v6}, Lcom/zeusis/widget/dialog/ZeusisItemView;->layoutRightView(Landroid/view/View;III)I

    move-result v12

    .line 582
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    .line 586
    .local v20, "viewHeight":I
    add-int v25, v6, v18

    sub-int v25, v25, v20

    div-int/lit8 v23, v25, 0x2

    .line 587
    .local v23, "viewTopBound":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPaddingRight:I

    move/from16 v25, v0

    sub-int v25, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceViewWidth:I

    move/from16 v26, v0

    sub-int v21, v25, v26

    .line 588
    .local v21, "viewLeftBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    add-int v22, v21, v25

    .line 589
    .local v22, "viewRightBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    move-object/from16 v25, v0

    add-int v26, v23, v20

    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v22

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 590
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mGapBetweenRightImageAndText:I

    move/from16 v25, v0

    sub-int v25, v21, v25

    move/from16 v0, v25

    if-le v12, v0, :cond_5

    .line 591
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mGapBetweenRightImageAndText:I

    move/from16 v25, v0

    sub-int v12, v21, v25

    .line 596
    .end local v20    # "viewHeight":I
    .end local v21    # "viewLeftBound":I
    .end local v22    # "viewRightBound":I
    .end local v23    # "viewTopBound":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightTopView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 597
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mTextMarginTop:I

    move/from16 v25, v0

    add-int v25, v25, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextViewHeight:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightTopView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    sub-int v26, v26, v27

    div-int/lit8 v26, v26, 0x2

    add-int v17, v25, v26

    .line 598
    .local v17, "textTopBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightTopView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    sub-int v15, v12, v25

    .line 600
    .local v15, "textLeftBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightTopView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightTopView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v26, v26, v17

    move-object/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v26

    invoke-virtual {v0, v15, v1, v12, v2}, Landroid/view/View;->layout(IIII)V

    .line 603
    .end local v15    # "textLeftBound":I
    .end local v17    # "textTopBound":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightCenterView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightCenterView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 605
    .local v14, "textHeight":I
    add-int v25, v6, v18

    sub-int v25, v25, v14

    div-int/lit8 v17, v25, 0x2

    .line 606
    .restart local v17    # "textTopBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightCenterView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    sub-int v15, v12, v25

    .line 607
    .restart local v15    # "textLeftBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightCenterView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    add-int v26, v17, v14

    move-object/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v26

    invoke-virtual {v0, v15, v1, v12, v2}, Landroid/view/View;->layout(IIII)V

    .line 608
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mGapBetweenRightImageAndText:I

    move/from16 v25, v0

    sub-int v12, v15, v25

    .line 613
    .end local v14    # "textHeight":I
    .end local v15    # "textLeftBound":I
    .end local v17    # "textTopBound":I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextViewHeight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryTextViewHeight:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mGapBetweenPrimaryAndSecondary:I

    move/from16 v26, v0

    add-int v19, v25, v26

    .line 617
    .local v19, "totalTextHeight":I
    add-int v25, v6, v18

    sub-int v25, v25, v19

    div-int/lit8 v17, v25, 0x2

    .line 619
    .restart local v17    # "textTopBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    add-int v16, v11, v25

    .line 621
    .local v16, "textRightBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextViewHeight:I

    move/from16 v26, v0

    add-int v26, v26, v17

    move-object/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v26

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 624
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextViewHeight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    sub-int v25, v25, v26

    div-int/lit8 v25, v25, 0x2

    add-int v10, v17, v25

    .line 625
    .local v10, "labelTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mGapBetweenPrimaryTextAndLabel:I

    move/from16 v26, v0

    add-int v26, v26, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mGapBetweenPrimaryTextAndLabel:I

    move/from16 v27, v0

    add-int v27, v27, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    add-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v28, v28, v10

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 630
    .end local v10    # "labelTop":I
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextViewHeight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mGapBetweenPrimaryAndSecondary:I

    move/from16 v26, v0

    add-int v25, v25, v26

    add-int v17, v17, v25

    .line 633
    .end local v16    # "textRightBound":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryTextViewHeight:I

    move/from16 v26, v0

    add-int v26, v26, v17

    move-object/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v26

    invoke-virtual {v0, v11, v1, v12, v2}, Landroid/view/View;->layout(IIII)V

    .line 522
    :cond_a
    return-void

    .line 532
    .end local v13    # "singleLine":Z
    .end local v17    # "textTopBound":I
    .end local v19    # "totalTextHeight":I
    :cond_b
    const/4 v13, 0x1

    .restart local v13    # "singleLine":Z
    goto/16 :goto_0

    .line 551
    .restart local v7    # "iconHeight":I
    .restart local v9    # "iconWidth":I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mWidth16dp:I

    move/from16 v25, v0

    add-int v8, v18, v25

    .restart local v8    # "iconTopBound":I
    goto/16 :goto_1

    .line 559
    .end local v7    # "iconHeight":I
    .end local v8    # "iconTopBound":I
    .end local v9    # "iconWidth":I
    :cond_d
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 570
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mCheckBox:Landroid/widget/CompoundButton;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mCheckBox:Landroid/widget/CompoundButton;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v12, v6}, Lcom/zeusis/widget/dialog/ZeusisItemView;->layoutRightView(Landroid/view/View;III)I

    move-result v12

    goto/16 :goto_3

    .line 572
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRadioButton:Landroid/widget/CompoundButton;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRadioButton:Landroid/widget/CompoundButton;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v12, v6}, Lcom/zeusis/widget/dialog/ZeusisItemView;->layoutRightView(Landroid/view/View;III)I

    move-result v12

    goto/16 :goto_3

    .line 574
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSwitchButton:Landroid/widget/CompoundButton;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSwitchButton:Landroid/widget/CompoundButton;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v12, v6}, Lcom/zeusis/widget/dialog/ZeusisItemView;->layoutRightView(Landroid/view/View;III)I

    move-result v12

    goto/16 :goto_3

    .line 626
    .restart local v16    # "textRightBound":I
    .restart local v17    # "textTopBound":I
    .restart local v19    # "totalTextHeight":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSummaryView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 627
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextViewHeight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSummaryView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    sub-int v25, v25, v26

    div-int/lit8 v25, v25, 0x2

    add-int v10, v17, v25

    .line 628
    .restart local v10    # "labelTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSummaryView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mGapBetweenPrimaryTextAndSummary:I

    move/from16 v26, v0

    add-int v26, v26, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mGapBetweenPrimaryTextAndSummary:I

    move/from16 v27, v0

    add-int v27, v27, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSummaryView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    add-int v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSummaryView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v28, v28, v10

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_4
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 419
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 420
    .local v6, "specWidth":I
    iget v2, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPreferredHeight:I

    .line 422
    .local v2, "preferredHeight":I
    iput v10, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextViewHeight:I

    .line 423
    iput v10, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryTextViewHeight:I

    .line 429
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightWidget:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    invoke-virtual {p0, v7}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 430
    :cond_0
    iget v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mWidth16dp:I

    iput v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPaddingRight:I

    .line 435
    :goto_0
    iget v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPaddingLeft:I

    sub-int v7, v6, v7

    iget v8, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPaddingRight:I

    sub-int v0, v7, v8

    .line 438
    .local v0, "effectiveWidth":I
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v7}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 440
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIcon:Landroid/widget/ImageView;

    iget v8, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIconSize:I

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget v9, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIconSize:I

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 441
    iget v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIconSize:I

    iget v8, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mGapBetweenPrimaryImageAndText:I

    add-int/2addr v7, v8

    sub-int/2addr v0, v7

    .line 444
    :cond_1
    const/4 v4, 0x0

    .line 445
    .local v4, "rightImageSize":I
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v7}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 446
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIcon:Landroid/widget/ImageView;

    iget v8, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIconSize:I

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget v9, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIconSize:I

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 447
    iget v4, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIconSize:I

    .line 458
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceView:Landroid/widget/CheckBox;

    invoke-virtual {p0, v7}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 459
    iget v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceViewWidth:I

    if-ge v4, v7, :cond_3

    .line 460
    iget v4, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mMultiChoiceViewWidth:I

    .line 467
    :cond_3
    if-lez v4, :cond_4

    .line 468
    iget v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mGapBetweenRightImageAndText:I

    add-int/2addr v7, v4

    sub-int/2addr v0, v7

    .line 471
    :cond_4
    move v3, v0

    .line 472
    .local v3, "primaryTextMaxWidth":I
    move v5, v0

    .line 473
    .local v5, "secondaryTextMaxWidth":I
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightCenterView:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 474
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightCenterView:Landroid/widget/TextView;

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 475
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightCenterView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v8, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mGapBetweenRightImageAndText:I

    add-int/2addr v7, v8

    sub-int/2addr v0, v7

    .line 477
    move v3, v0

    .line 478
    move v5, v0

    .line 483
    :cond_5
    :goto_2
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 484
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLabelView:Landroid/widget/TextView;

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 485
    iget v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mGapBetweenPrimaryTextAndLabel:I

    iget-object v8, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v3, v7

    .line 490
    :cond_6
    :goto_3
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 491
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextView:Landroid/widget/TextView;

    const/high16 v8, -0x80000000

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 492
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iput v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextViewHeight:I

    .line 495
    :cond_7
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 496
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryTextView:Landroid/widget/TextView;

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 497
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iput v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryTextViewHeight:I

    .line 501
    :cond_8
    iget v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextViewHeight:I

    iget v8, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryTextViewHeight:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mGapBetweenPrimaryAndSecondary:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mTextMarginTop:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mTextMarginBottom:I

    add-int v1, v7, v8

    .line 504
    .local v1, "height":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 507
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 508
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHeaderTextView:Landroid/widget/TextView;

    .line 509
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 510
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 508
    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 511
    iget v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHeaderViewHeight:I

    add-int/2addr v1, v7

    .line 514
    :cond_9
    invoke-virtual {p0, v6, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 516
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {p0, v7}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 517
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mCheckBox:Landroid/widget/CompoundButton;

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 416
    :cond_a
    return-void

    .line 432
    .end local v0    # "effectiveWidth":I
    .end local v1    # "height":I
    .end local v3    # "primaryTextMaxWidth":I
    .end local v4    # "rightImageSize":I
    .end local v5    # "secondaryTextMaxWidth":I
    :cond_b
    iget v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mWidth20dp:I

    iput v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPaddingRight:I

    goto/16 :goto_0

    .line 448
    .restart local v0    # "effectiveWidth":I
    .restart local v4    # "rightImageSize":I
    :cond_c
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {p0, v7}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 449
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mCheckBox:Landroid/widget/CompoundButton;

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 450
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    goto/16 :goto_1

    .line 451
    :cond_d
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRadioButton:Landroid/widget/CompoundButton;

    invoke-virtual {p0, v7}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 452
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRadioButton:Landroid/widget/CompoundButton;

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 453
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRadioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    goto/16 :goto_1

    .line 454
    :cond_e
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSwitchButton:Landroid/widget/CompoundButton;

    invoke-virtual {p0, v7}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 455
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSwitchButton:Landroid/widget/CompoundButton;

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 456
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSwitchButton:Landroid/widget/CompoundButton;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    goto/16 :goto_1

    .line 479
    .restart local v3    # "primaryTextMaxWidth":I
    .restart local v5    # "secondaryTextMaxWidth":I
    :cond_f
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightTopView:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 480
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightTopView:Landroid/widget/TextView;

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 481
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSnippetRightTopView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v0, v7

    iget v8, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mGapBetweenRightImageAndText:I

    sub-int v3, v7, v8

    goto/16 :goto_2

    .line 486
    :cond_10
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/zeusis/widget/dialog/ZeusisItemView;->isVisible(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 487
    iget-object v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSummaryView:Landroid/widget/TextView;

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 488
    iget v7, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mGapBetweenPrimaryTextAndSummary:I

    iget-object v8, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v3, v7

    goto/16 :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 401
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 402
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 407
    .local v1, "y":F
    iget-object v2, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    float-to-int v3, v0

    float-to-int v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setActivatedStateSupported(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1262
    iput-boolean p1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mActivatedStateSupported:Z

    .line 1261
    return-void
.end method

.method public setAdjustSelectionBoundsEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1266
    iput-boolean p1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mAdjustSelectionBoundsEnabled:Z

    .line 1265
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 364
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mViewCheckable:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mViewCheckable:Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 360
    :cond_0
    return-void
.end method

.method public setHeaderView(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 756
    return-void
.end method

.method public setLabelText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->getLabelTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 775
    return-void
.end method

.method public setLeftIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    const/4 v1, 0x0

    .line 901
    if-eqz p1, :cond_1

    .line 902
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->createLeftIcon()V

    .line 903
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 904
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLeftIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 886
    if-eqz p1, :cond_1

    .line 887
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->createLeftIcon()V

    .line 888
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 889
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLeftIconSizeStyle(I)V
    .locals 0
    .param p1, "sizeStyle"    # I

    .prologue
    .line 881
    iput p1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIconSizeStyle:I

    .line 882
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->resetPaddingAndGap()V

    .line 880
    return-void
.end method

.method public setLeftIconVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 875
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 876
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mLeftIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 874
    :cond_0
    return-void

    .line 876
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setMinimumHeight(I)V
    .locals 0
    .param p1, "minHeight"    # I

    .prologue
    .line 355
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 356
    iput p1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPreferredHeight:I

    .line 354
    return-void
.end method

.method public setOnDividerInsetListener(Lcom/zeusis/widget/dialog/OnDividerInsetListener;)V
    .locals 0
    .param p1, "inf"    # Lcom/zeusis/widget/dialog/OnDividerInsetListener;

    .prologue
    .line 1300
    iput-object p1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mOnDividerInsetListener:Lcom/zeusis/widget/dialog/OnDividerInsetListener;

    .line 1299
    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 1
    .param p1, "padding"    # I

    .prologue
    const/4 v0, 0x0

    .line 313
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mHasSetPaddingLeft:Z

    .line 314
    iput p1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPaddingLeft:I

    .line 312
    return-void
.end method

.method public setPrimaryTextView(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->getPrimaryTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 647
    return-void
.end method

.method public setRightIcon(I)V
    .locals 4
    .param p1, "resId"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 934
    if-nez p1, :cond_1

    .line 935
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 938
    :cond_0
    iput-object v3, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightWidget:Landroid/view/View;

    .line 933
    :goto_0
    return-void

    .line 943
    :cond_1
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->createRightIcon()V

    .line 944
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 945
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIcon:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 946
    iget-short v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mEditState:S

    packed-switch v0, :pswitch_data_0

    .line 968
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 969
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIcon:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightWidget:Landroid/view/View;

    goto :goto_0

    .line 949
    :pswitch_1
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 946
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSecondaryTextView(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mSecondaryText:Ljava/lang/CharSequence;

    .line 678
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->drawSecondaryText()V

    .line 675
    return-void
.end method

.method public setSnippetRightCenterText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->getSnippetRightCenterView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 825
    return-void
.end method

.method public setSnippetRightTopText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 822
    invoke-virtual {p0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->getSnippetRightTopView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 821
    return-void
.end method

.method public setStatus(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 706
    .local p1, "resIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mStatusResIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 707
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->drawSecondaryText()V

    .line 705
    return-void

    .line 708
    :cond_1
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mStatusResIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->getSummaryTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 800
    return-void
.end method

.method public setUnReadIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    const/4 v1, 0x0

    .line 743
    invoke-virtual {p0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->getPrimaryTextView()Landroid/widget/TextView;

    .line 744
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mPrimaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 742
    return-void
.end method

.method public showCheckBox()V
    .locals 2

    .prologue
    .line 1021
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->hideAllRightView()V

    .line 1022
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->createCheckBox()V

    .line 1023
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mCheckBox:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1024
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mCheckBox:Landroid/widget/CompoundButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1025
    iget-short v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mEditState:S

    packed-switch v0, :pswitch_data_0

    .line 1043
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mCheckBox:Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mViewCheckable:Landroid/widget/Checkable;

    .line 1055
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mCheckBox:Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightWidget:Landroid/view/View;

    .line 1020
    return-void

    .line 1028
    :pswitch_1
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mCheckBox:Landroid/widget/CompoundButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1036
    :pswitch_2
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mCheckBox:Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mViewCheckable:Landroid/widget/Checkable;

    goto :goto_0

    .line 1025
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showRadioButton()V
    .locals 2

    .prologue
    .line 979
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->hideAllRightView()V

    .line 980
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->createRadioButton()V

    .line 981
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRadioButton:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 982
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRadioButton:Landroid/widget/CompoundButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 983
    iget-short v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mEditState:S

    packed-switch v0, :pswitch_data_0

    .line 1001
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRadioButton:Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mViewCheckable:Landroid/widget/Checkable;

    .line 1013
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRadioButton:Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightWidget:Landroid/view/View;

    .line 978
    return-void

    .line 986
    :pswitch_1
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRadioButton:Landroid/widget/CompoundButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 994
    :pswitch_2
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRadioButton:Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mViewCheckable:Landroid/widget/Checkable;

    goto :goto_0

    .line 983
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showRightImageIcon()V
    .locals 2

    .prologue
    .line 1111
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->hideAllRightView()V

    .line 1112
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->createRightIcon()V

    .line 1113
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1114
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIcon:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1115
    iget-short v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mEditState:S

    packed-switch v0, :pswitch_data_0

    .line 1139
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIcon:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightWidget:Landroid/view/View;

    .line 1110
    return-void

    .line 1118
    :pswitch_1
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mRightIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mViewCheckable:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mViewCheckable:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    .line 376
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
