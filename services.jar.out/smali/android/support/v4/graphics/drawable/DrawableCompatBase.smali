.class Landroid/support/v4/graphics/drawable/DrawableCompatBase;
.super Ljava/lang/Object;
.source "DrawableCompatBase.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTint(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 29
    instance-of v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    if-nez v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    check-cast p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    invoke-interface {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->setTint(I)V

    goto :goto_0
.end method

.method public static setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 35
    instance-of v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    if-nez v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    check-cast p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    invoke-interface {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public static setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 41
    instance-of v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    check-cast p0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    invoke-interface {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public static wrapForTinting(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 47
    instance-of v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;

    if-eqz v0, :cond_0

    .line 50
    return-object p0

    .line 48
    :cond_0
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;

    invoke-direct {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method
