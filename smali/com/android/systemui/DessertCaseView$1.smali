.class Lcom/android/systemui/DessertCaseView$1;
.super Ljava/lang/Object;
.source "DessertCaseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DessertCaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DessertCaseView;


# direct methods
.method constructor <init>(Lcom/android/systemui/DessertCaseView;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 135
    iget-object v4, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    invoke-virtual {v4}, Lcom/android/systemui/DessertCaseView;->getChildCount()I

    move-result v1

    .line 137
    .local v1, "N":I
    const/4 v0, 0x1

    .line 138
    .local v0, "K":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v9, :cond_0

    .line 139
    iget-object v4, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    int-to-double v7, v1

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/DessertCaseView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 140
    .local v2, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    invoke-virtual {v4, v2, v9}, Lcom/android/systemui/DessertCaseView;->place(Landroid/view/View;Z)V

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    invoke-virtual {v4}, Lcom/android/systemui/DessertCaseView;->fillFreeList()V

    .line 145
    iget-object v4, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    invoke-static {v4}, Lcom/android/systemui/DessertCaseView;->access$000(Lcom/android/systemui/DessertCaseView;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    iget-object v4, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    invoke-static {v4}, Lcom/android/systemui/DessertCaseView;->access$200(Lcom/android/systemui/DessertCaseView;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Lcom/android/systemui/DessertCaseView;

    invoke-static {v5}, Lcom/android/systemui/DessertCaseView;->access$100(Lcom/android/systemui/DessertCaseView;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    :cond_1
    return-void
.end method
