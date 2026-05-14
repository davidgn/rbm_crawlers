.class public final Ls2/m;
.super Lu0/X;
.source "SourceFile"


# instance fields
.field public final synthetic f:Ls2/p;


# direct methods
.method public constructor <init>(Ls2/p;Lcom/google/android/material/internal/NavigationMenuView;)V
    .locals 0

    iput-object p1, p0, Ls2/m;->f:Ls2/p;

    invoke-direct {p0, p2}, Lu0/X;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;LN/i;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lu0/X;->d(Landroid/view/View;LN/i;)V

    iget-object p1, p0, Ls2/m;->f:Ls2/p;

    iget-object p1, p1, Ls2/p;->e:Ls2/h;

    iget-object p1, p1, Ls2/h;->l:Ls2/p;

    iget-object v0, p1, Ls2/p;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    move v2, v1

    :goto_1
    iget-object v3, p1, Ls2/p;->e:Ls2/h;

    iget-object v3, v3, Ls2/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p1, Ls2/p;->e:Ls2/h;

    invoke-virtual {v3, v2}, Ls2/h;->c(I)I

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0, v1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p1

    iget-object p2, p2, LN/i;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method
