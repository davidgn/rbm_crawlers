.class public final Le3/c;
.super Lu0/W;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final A:Landroid/widget/ImageView;

.field public final B:Landroid/widget/TextView;

.field public final C:Landroid/widget/TextView;

.field public final D:Landroid/widget/TextView;

.field public final synthetic E:Le3/e;

.field public z:Le3/b;


# direct methods
.method public constructor <init>(Le3/e;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Le3/c;->E:Le3/e;

    invoke-direct {p0, p2}, Lu0/W;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901b4

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Le3/c;->A:Landroid/widget/ImageView;

    const p1, 0x7f0903c2

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Le3/c;->B:Landroid/widget/TextView;

    const p1, 0x7f090388

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Le3/c;->C:Landroid/widget/TextView;

    const p1, 0x7f090126

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Le3/c;->D:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Le3/c;->E:Le3/e;

    iget-object v0, p1, Le3/e;->l:Lg3/a;

    iget-object v1, p0, Le3/c;->z:Le3/b;

    invoke-interface {v0, v1}, Lg3/a;->i(Le3/b;)V

    iget-object p1, p1, Le3/e;->o:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
