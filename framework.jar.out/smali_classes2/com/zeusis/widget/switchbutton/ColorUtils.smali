.class public Lcom/zeusis/widget/switchbutton/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static final CHECKED_ATTR:I = 0x10100a0

.field private static final ENABLE_ATTR:I = 0x101009e

.field private static final PRESSED_ATTR:I = 0x10100a7


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateBackColorWithTintColor(I)Landroid/content/res/ColorStateList;
    .locals 9
    .param p0, "tintColor"    # I

    .prologue
    const v8, -0x10100a0

    const/high16 v7, -0x30000000

    const v6, 0x10100a0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 24
    const/4 v2, 0x6

    new-array v1, v2, [[I

    const v2, -0x101009e

    filled-new-array {v2, v6}, [I

    move-result-object v2

    aput-object v2, v1, v4

    new-array v2, v5, [I

    const v3, -0x101009e

    aput v3, v2, v4

    aput-object v2, v1, v5

    const v2, 0x10100a7

    filled-new-array {v6, v2}, [I

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const v2, 0x10100a7

    filled-new-array {v8, v2}, [I

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-array v2, v5, [I

    aput v6, v2, v4

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-array v2, v5, [I

    aput v8, v2, v4

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 27
    .local v1, "states":[[I
    const/4 v2, 0x6

    new-array v0, v2, [I

    .line 28
    const/high16 v2, -0x1f000000

    sub-int v2, p0, v2

    aput v2, v0, v4

    const/high16 v2, 0x10000000

    aput v2, v0, v5

    sub-int v2, p0, v7

    const/4 v3, 0x2

    aput v2, v0, v3

    const/high16 v2, 0x20000000

    const/4 v3, 0x3

    aput v2, v0, v3

    sub-int v2, p0, v7

    const/4 v3, 0x4

    aput v2, v0, v3

    const/high16 v2, 0x20000000

    const/4 v3, 0x5

    aput v2, v0, v3

    .line 30
    .local v0, "colors":[I
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method public static generateThumbColorWithTintColor(I)Landroid/content/res/ColorStateList;
    .locals 9
    .param p0, "tintColor"    # I

    .prologue
    const v8, -0x10100a0

    const/high16 v7, -0x67000000

    const v6, 0x10100a0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 15
    const/4 v2, 0x6

    new-array v1, v2, [[I

    const v2, -0x101009e

    filled-new-array {v2, v6}, [I

    move-result-object v2

    aput-object v2, v1, v4

    new-array v2, v5, [I

    const v3, -0x101009e

    aput v3, v2, v4

    aput-object v2, v1, v5

    const v2, 0x10100a7

    filled-new-array {v2, v8}, [I

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const v2, 0x10100a7

    filled-new-array {v2, v6}, [I

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-array v2, v5, [I

    aput v6, v2, v4

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-array v2, v5, [I

    aput v8, v2, v4

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 18
    .local v1, "states":[[I
    const/4 v2, 0x6

    new-array v0, v2, [I

    const/high16 v2, -0x56000000

    sub-int v2, p0, v2

    aput v2, v0, v4

    const v2, -0x454546

    aput v2, v0, v5

    sub-int v2, p0, v7

    const/4 v3, 0x2

    aput v2, v0, v3

    sub-int v2, p0, v7

    const/4 v3, 0x3

    aput v2, v0, v3

    const/high16 v2, -0x1000000

    or-int/2addr v2, p0

    const/4 v3, 0x4

    aput v2, v0, v3

    const v2, -0x111112

    const/4 v3, 0x5

    aput v2, v0, v3

    .line 20
    .local v0, "colors":[I
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method
