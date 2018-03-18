.class public final Lcom/android/internal/widget/ZsFloatingToolbar;
.super Ljava/lang/Object;
.source "ZsFloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ZsFloatingToolbar$1;,
        Lcom/android/internal/widget/ZsFloatingToolbar$2;,
        Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final FLOATING_TOOLBAR_TAG:Ljava/lang/String; = "zs_floating_toolbar"

.field private static final NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private static final TAG:Ljava/lang/String; = "ZsFloatingToolbar"


# instance fields
.field private final mContentRect:Landroid/graphics/Rect;

.field private final mContext:Landroid/content/Context;

.field private mMenu:Landroid/view/Menu;

.field private mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final mOrientationChangeHandler:Landroid/view/View$OnLayoutChangeListener;

.field private final mPopup:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;

.field private final mPreviousContentRect:Landroid/graphics/Rect;

.field private mShowingMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestedWidth:I

.field private mWidthChanged:Z

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/widget/ZsFloatingToolbar;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/ZsFloatingToolbar;)Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mPopup:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/widget/ZsFloatingToolbar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mWidthChanged:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/view/MenuItem;)Z
    .locals 1
    .param p0, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    invoke-static {p0}, Lcom/android/internal/widget/ZsFloatingToolbar;->isIconOnlyMenuItem(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "ZsFloatingToolbar"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/widget/ZsFloatingToolbar;->DEBUG:Z

    .line 51
    new-instance v0, Lcom/android/internal/widget/ZsFloatingToolbar$1;

    invoke-direct {v0}, Lcom/android/internal/widget/ZsFloatingToolbar$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ZsFloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    .line 67
    sget-object v0, Lcom/android/internal/widget/ZsFloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mWidthChanged:Z

    .line 72
    new-instance v0, Lcom/android/internal/widget/ZsFloatingToolbar$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ZsFloatingToolbar$2;-><init>(Lcom/android/internal/widget/ZsFloatingToolbar;)V

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mOrientationChangeHandler:Landroid/view/View$OnLayoutChangeListener;

    .line 103
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/ZsFloatingToolbar;->applyDefaultTheme(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mContext:Landroid/content/Context;

    .line 104
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mWindow:Landroid/view/Window;

    .line 105
    new-instance v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;

    iget-object v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mPopup:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;

    .line 102
    return-void
.end method

.method private static applyDefaultTheme(Landroid/content/Context;)Landroid/content/Context;
    .locals 7
    .param p0, "originalContext"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1050
    new-array v3, v6, [I

    const/high16 v4, 0x1160000

    aput v4, v3, v5

    invoke-virtual {p0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1051
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 1052
    .local v1, "isLightTheme":Z
    if-eqz v1, :cond_0

    const v2, 0x1030237

    .line 1053
    .local v2, "themeId":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1054
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v3

    .line 1052
    .end local v2    # "themeId":I
    :cond_0
    const v2, 0x1030224

    .restart local v2    # "themeId":I
    goto :goto_0
.end method

.method private doShow()V
    .locals 4

    .prologue
    .line 215
    sget-boolean v1, Lcom/android/internal/widget/ZsFloatingToolbar;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ZsFloatingToolbar"

    const-string/jumbo v2, "***** doShow() *****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mMenu:Landroid/view/Menu;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ZsFloatingToolbar;->getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v0

    .line 218
    .local v0, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ZsFloatingToolbar;->isCurrentlyShowing(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mWidthChanged:Z

    if-eqz v1, :cond_3

    .line 219
    :cond_1
    sget-boolean v1, Lcom/android/internal/widget/ZsFloatingToolbar;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "ZsFloatingToolbar"

    const-string/jumbo v2, "doShow: 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mPopup:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v1}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->dismiss()V

    .line 224
    iget-object v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mPopup:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;

    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    iget v3, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mSuggestedWidth:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->layoutMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;I)V

    .line 225
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ZsFloatingToolbar;->getShowingMenuItemsReferences(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    .line 227
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mPopup:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v1}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_6

    .line 228
    sget-boolean v1, Lcom/android/internal/widget/ZsFloatingToolbar;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "ZsFloatingToolbar"

    const-string/jumbo v2, "doShow: 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mPopup:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;

    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->show(Landroid/graphics/Rect;)V

    .line 234
    :cond_5
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mWidthChanged:Z

    .line 235
    iget-object v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 214
    return-void

    .line 230
    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 231
    sget-boolean v1, Lcom/android/internal/widget/ZsFloatingToolbar;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string/jumbo v1, "ZsFloatingToolbar"

    const-string/jumbo v2, "doShow: 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_7
    iget-object v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mPopup:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;

    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->updateCoordinates(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private getShowingMenuItemsReferences(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v2, "references":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "menuItem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    .line 268
    .local v0, "menuItem":Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/internal/widget/ZsFloatingToolbar;->isIconOnlyMenuItem(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    :cond_0
    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_1
    return-object v2
.end method

.method private getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v2, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 252
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 253
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    .line 255
    .local v3, "subMenu":Landroid/view/Menu;
    if-eqz v3, :cond_1

    .line 256
    invoke-direct {p0, v3}, Lcom/android/internal/widget/ZsFloatingToolbar;->getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 251
    .end local v3    # "subMenu":Landroid/view/Menu;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    .restart local v3    # "subMenu":Landroid/view/Menu;
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 262
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    .end local v3    # "subMenu":Landroid/view/Menu;
    :cond_2
    return-object v2
.end method

.method private isCurrentlyShowing(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ZsFloatingToolbar;->getShowingMenuItemsReferences(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isIconOnlyMenuItem(Landroid/view/MenuItem;)Z
    .locals 2
    .param p0, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    .line 1062
    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private registerOrientationHandler()V
    .locals 2

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/android/internal/widget/ZsFloatingToolbar;->unregisterOrientationHandler()V

    .line 279
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mOrientationChangeHandler:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 277
    return-void
.end method

.method private unregisterOrientationHandler()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mOrientationChangeHandler:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 282
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/internal/widget/ZsFloatingToolbar;->unregisterOrientationHandler()V

    .line 189
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mPopup:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->dismiss()V

    .line 187
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mPopup:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->hide()V

    .line 196
    return-void
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mPopup:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mPopup:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setContentRect(Landroid/graphics/Rect;)Lcom/android/internal/widget/ZsFloatingToolbar;
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 138
    return-object p0
.end method

.method public setMenu(Landroid/view/Menu;)Lcom/android/internal/widget/ZsFloatingToolbar;
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 126
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mMenu:Landroid/view/Menu;

    .line 127
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/android/internal/widget/ZsFloatingToolbar;
    .locals 1
    .param p1, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 113
    iput-object p1, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 117
    :goto_0
    return-object p0

    .line 115
    :cond_0
    sget-object v0, Lcom/android/internal/widget/ZsFloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    goto :goto_0
.end method

.method public setSuggestedWidth(I)Lcom/android/internal/widget/ZsFloatingToolbar;
    .locals 8
    .param p1, "suggestedWidth"    # I

    .prologue
    .line 150
    iget v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mSuggestedWidth:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 151
    .local v0, "difference":I
    int-to-double v2, v0

    iget v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mSuggestedWidth:I

    int-to-double v4, v1

    const-wide v6, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mWidthChanged:Z

    .line 152
    iput p1, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mSuggestedWidth:I

    .line 153
    return-object p0

    .line 151
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public show()Lcom/android/internal/widget/ZsFloatingToolbar;
    .locals 2

    .prologue
    .line 160
    sget-boolean v0, Lcom/android/internal/widget/ZsFloatingToolbar;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 161
    const-string/jumbo v0, "ZsFloatingToolbar"

    const-string/jumbo v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/ZsFloatingToolbar;->registerOrientationHandler()V

    .line 165
    invoke-direct {p0}, Lcom/android/internal/widget/ZsFloatingToolbar;->doShow()V

    .line 166
    return-object p0
.end method

.method public updateLayout()Lcom/android/internal/widget/ZsFloatingToolbar;
    .locals 2

    .prologue
    .line 174
    sget-boolean v0, Lcom/android/internal/widget/ZsFloatingToolbar;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 175
    const-string/jumbo v0, "ZsFloatingToolbar"

    const-string/jumbo v1, "***** updateLayout *****"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar;->mPopup:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-direct {p0}, Lcom/android/internal/widget/ZsFloatingToolbar;->doShow()V

    .line 181
    :cond_1
    return-object p0
.end method
