.class Lcom/android/systemui/recent/RecentsHorizontalScrollView$8;
.super Landroid/database/DataSetObserver;
.source "RecentsHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsHorizontalScrollView;->setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$8;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$8;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    invoke-static {v0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->access$300(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    .line 360
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$8;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    invoke-static {v0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->access$300(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    .line 364
    return-void
.end method
