.class Landroid/support/v4/widget/CompoundButtonCompatDonut;
.super Ljava/lang/Object;
.source "CompoundButtonCompatDonut.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CompoundButtonCompatDonut"

.field private static sButtonDrawableField:Ljava/lang/reflect/Field;

.field private static sButtonDrawableFieldFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    sget-boolean v0, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableFieldFetched:Z

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    sget-object v0, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    .line 79
    :goto_1
    return-object v3

    :cond_0
    :try_start_0
    const-class v0, Landroid/widget/CompoundButton;

    const-string/jumbo v1, "mButtonDrawable"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableField:Ljava/lang/reflect/Field;

    .line 64
    sget-object v0, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_2
    sput-boolean v4, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableFieldFetched:Z

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    const-string/jumbo v1, "CompoundButtonCompatDonut"

    const-string/jumbo v2, "Failed to retrieve mButtonDrawable field"

    .line 66
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 73
    :cond_1
    :try_start_1
    sget-object v0, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "CompoundButtonCompatDonut"

    const-string/jumbo v2, "Failed to get button drawable via reflection"

    .line 75
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    sput-object v3, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableField:Ljava/lang/reflect/Field;

    goto :goto_1
.end method

.method static getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 41
    instance-of v0, p0, Landroid/support/v4/widget/TintableCompoundButton;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 44
    return-object v0

    .line 42
    :cond_0
    check-cast p0, Landroid/support/v4/widget/TintableCompoundButton;

    invoke-interface {p0}, Landroid/support/v4/widget/TintableCompoundButton;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method static getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 54
    instance-of v0, p0, Landroid/support/v4/widget/TintableCompoundButton;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 57
    return-object v0

    .line 55
    :cond_0
    check-cast p0, Landroid/support/v4/widget/TintableCompoundButton;

    invoke-interface {p0}, Landroid/support/v4/widget/TintableCompoundButton;->getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method static setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 35
    instance-of v0, p0, Landroid/support/v4/widget/TintableCompoundButton;

    if-nez v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    check-cast p0, Landroid/support/v4/widget/TintableCompoundButton;

    invoke-interface {p0, p1}, Landroid/support/v4/widget/TintableCompoundButton;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method static setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 48
    instance-of v0, p0, Landroid/support/v4/widget/TintableCompoundButton;

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    check-cast p0, Landroid/support/v4/widget/TintableCompoundButton;

    invoke-interface {p0, p1}, Landroid/support/v4/widget/TintableCompoundButton;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method
