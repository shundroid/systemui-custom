.class Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NavbarEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavbarEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ButtonAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mTakenItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "smallButtons"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/KeyButtonView;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p2, "buttons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/policy/KeyButtonView;>;"
    const v3, 0x7f04000b

    const v4, 0x7f08004c

    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->buildItems(Z)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, p1, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 507
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->mTakenItems:Ljava/util/ArrayList;

    .line 508
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 509
    .local v0, "button":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    .line 510
    .local v2, "info":Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_EMPTY:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    if-eq v2, v3, :cond_0

    .line 511
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->mTakenItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 514
    .end local v0    # "button":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    .end local v2    # "info":Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    :cond_1
    return-void
.end method

.method private static buildItems(Z)Ljava/util/List;
    .locals 2
    .param p0, "smallButtons"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavbarEditor;->access$500()[Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 520
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;>;"
    sget-object v1, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_HOME:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 522
    if-nez p0, :cond_0

    .line 523
    sget-object v1, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_CONDITIONAL_MENU:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 524
    sget-object v1, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_ALWAYS_MENU:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 529
    :goto_0
    return-object v0

    .line 526
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/NavbarEditor;->NAVBAR_MENU_BIG:Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 534
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 535
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;

    .line 536
    .local v2, "info":Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->isEnabled(I)Z

    move-result v0

    .line 538
    .local v0, "enabled":Z
    const v5, 0x7f08004c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 539
    .local v3, "text":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v2, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->displayId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 542
    const v5, 0x7f08004b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 543
    .local v1, "icon":Landroid/widget/ImageView;
    iget v5, v2, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonInfo;->portResource:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 544
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 547
    return-object v4
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->mTakenItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavbarEditor$ButtonAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
