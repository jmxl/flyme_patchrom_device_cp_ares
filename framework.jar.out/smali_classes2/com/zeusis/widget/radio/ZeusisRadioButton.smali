.class public Lcom/zeusis/widget/radio/ZeusisRadioButton;
.super Landroid/widget/RadioButton;
.source "ZeusisRadioButton.java"


# instance fields
.field private drawable:Lcom/zeusis/widget/radio/RadioButtonDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    const v0, 0x101007e

    invoke-direct {p0, p1, p2, v0}, Lcom/zeusis/widget/radio/ZeusisRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v3, 0x1050164

    const/4 v2, 0x0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v0, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;

    invoke-direct {v0, p1, p2, p3, v2}, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {v0}, Lcom/zeusis/widget/radio/RadioButtonDrawable$Builder;->build()Lcom/zeusis/widget/radio/RadioButtonDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioButton;->drawable:Lcom/zeusis/widget/radio/RadioButtonDrawable;

    .line 24
    iget-object v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioButton;->drawable:Lcom/zeusis/widget/radio/RadioButtonDrawable;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->setInEditMode(Z)V

    .line 25
    iget-object v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioButton;->drawable:Lcom/zeusis/widget/radio/RadioButtonDrawable;

    invoke-virtual {v0, v2}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->setAnimEnable(Z)V

    .line 26
    iget-object v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioButton;->drawable:Lcom/zeusis/widget/radio/RadioButtonDrawable;

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    iget-object v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioButton;->drawable:Lcom/zeusis/widget/radio/RadioButtonDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->setAnimEnable(Z)V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHeight(I)V

    .line 20
    return-void
.end method


# virtual methods
.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/widget/RadioButton;->jumpDrawablesToCurrentState()V

    .line 72
    iget-object v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioButton;->drawable:Lcom/zeusis/widget/radio/RadioButtonDrawable;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioButton;->drawable:Lcom/zeusis/widget/radio/RadioButtonDrawable;

    invoke-virtual {v0}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->jumpToCurrentState()V

    .line 70
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 42
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zeusis/widget/radio/ZeusisRadioButton;->setCheckedImmediately(Z)V

    goto :goto_0
.end method

.method public setCheckedImmediately(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lcom/zeusis/widget/radio/RadioButtonDrawable;

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/zeusis/widget/radio/RadioButtonDrawable;

    .line 61
    .local v0, "drawable":Lcom/zeusis/widget/radio/RadioButtonDrawable;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->setAnimEnable(Z)V

    .line 62
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->setAnimEnable(Z)V

    .line 58
    .end local v0    # "drawable":Lcom/zeusis/widget/radio/RadioButtonDrawable;
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 85
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 83
    return-void

    .line 85
    :cond_0
    const v0, 0x3e851eb8    # 0.26f

    goto :goto_0
.end method

.method public setStrokeColor(Ljava/lang/String;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioButton;->drawable:Lcom/zeusis/widget/radio/RadioButtonDrawable;

    invoke-virtual {v0, p1}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->setStrokeColor(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 77
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-super {p0}, Landroid/widget/RadioButton;->toggle()V

    .line 34
    :cond_0
    return-void
.end method
