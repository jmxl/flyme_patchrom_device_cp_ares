.class public Landroid/util/BubbleViewUtils;
.super Ljava/lang/Object;
.source "BubbleViewUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BubbleViewUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bound(FFF)F
    .locals 1
    .param p0, "min"    # F
    .param p1, "val"    # F
    .param p2, "max"    # F

    .prologue
    .line 29
    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static dp2px(I)I
    .locals 2
    .param p0, "dp"    # I

    .prologue
    .line 36
    int-to-float v0, p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static getActivity(Landroid/view/View;)Landroid/app/Activity;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 126
    .local v0, "context":Landroid/content/Context;
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 127
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 128
    nop

    nop

    .end local v0    # "context":Landroid/content/Context;
    return-object v0

    .line 130
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    nop

    nop

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_0

    .line 132
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getNavigationBarHeight(Landroid/view/View;)I
    .locals 10
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 48
    invoke-static {p0}, Landroid/util/BubbleViewUtils;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 49
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 52
    .local v1, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 53
    .local v4, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 54
    iget v5, v4, Landroid/graphics/Point;->y:I

    .line 55
    .local v5, "usableHeight":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-lt v6, v8, :cond_0

    .line 56
    invoke-virtual {v1, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 65
    :goto_0
    iget v3, v4, Landroid/graphics/Point;->y:I

    .line 66
    .local v3, "realHeight":I
    if-le v3, v5, :cond_1

    sub-int v6, v3, v5

    :goto_1
    return v6

    .line 59
    .end local v3    # "realHeight":I
    :cond_0
    :try_start_0
    const-class v6, Landroid/view/Display;

    const-string/jumbo v8, "getRawWidth"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v4, Landroid/graphics/Point;->x:I

    .line 60
    const-class v6, Landroid/view/Display;

    const-string/jumbo v8, "getRawHeight"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v4, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "BubbleViewUtils"

    const-string/jumbo v8, " -----> getNavigationBarHeight: error"

    invoke-static {v6, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "realHeight":I
    :cond_1
    move v6, v7

    .line 66
    goto :goto_1

    .line 71
    .end local v1    # "display":Landroid/view/Display;
    .end local v3    # "realHeight":I
    .end local v4    # "size":Landroid/graphics/Point;
    .end local v5    # "usableHeight":I
    :cond_2
    return v7
.end method
