.class Lcom/android/systemui/quicksettings/GPSTile$1;
.super Ljava/lang/Object;
.source "GPSTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/quicksettings/GPSTile;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsController;Lcom/android/systemui/statusbar/policy/LocationController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/quicksettings/GPSTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/quicksettings/GPSTile;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/systemui/quicksettings/GPSTile$1;->this$0:Lcom/android/systemui/quicksettings/GPSTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/quicksettings/GPSTile$1;->this$0:Lcom/android/systemui/quicksettings/GPSTile;

    invoke-static {v0}, Lcom/android/systemui/quicksettings/GPSTile;->access$000(Lcom/android/systemui/quicksettings/GPSTile;)V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/quicksettings/GPSTile$1;->this$0:Lcom/android/systemui/quicksettings/GPSTile;

    invoke-virtual {v0}, Lcom/android/systemui/quicksettings/GPSTile;->updateResources()V

    .line 55
    return-void
.end method
