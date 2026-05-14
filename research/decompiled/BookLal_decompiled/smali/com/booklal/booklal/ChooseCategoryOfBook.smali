.class public Lcom/booklal/booklal/ChooseCategoryOfBook;
.super Lh/i;
.source "SourceFile"


# instance fields
.field public b:Landroidx/appcompat/widget/Toolbar;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/ImageView;

.field public e:Landroidx/cardview/widget/CardView;

.field public f:Landroidx/cardview/widget/CardView;

.field public l:Landroidx/cardview/widget/CardView;

.field public m:Landroidx/cardview/widget/CardView;

.field public n:Landroidx/cardview/widget/CardView;

.field public o:Landroidx/cardview/widget/CardView;

.field public p:Landroidx/cardview/widget/CardView;

.field public q:Landroidx/cardview/widget/CardView;

.field public r:Landroidx/cardview/widget/CardView;

.field public s:Landroidx/cardview/widget/CardView;

.field public t:Landroidx/cardview/widget/CardView;

.field public u:Landroidx/cardview/widget/CardView;

.field public v:Landroidx/cardview/widget/CardView;

.field public w:Landroidx/cardview/widget/CardView;

.field public x:Landroidx/cardview/widget/CardView;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lh/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/F;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroidx/activity/r;->a(Landroidx/activity/p;)V

    const p1, 0x7f0c0022

    invoke-virtual {p0, p1}, Lh/i;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "g1"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->y:Ljava/lang/String;

    const-string v0, "g2"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->z:Ljava/lang/String;

    const p1, 0x7f0903c6

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->d:Landroid/widget/ImageView;

    const v0, 0x7f09014e

    invoke-virtual {p0, v0}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->b:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0903cc

    invoke-virtual {p0, v0}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->b:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lh/i;->i(Landroidx/appcompat/widget/Toolbar;)V

    iget-object v0, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->c:Landroid/widget/TextView;

    const-string v1, "Pick Book Category"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lh/i;->g()LZ2/l;

    move-result-object v0

    invoke-virtual {v0}, LZ2/l;->S()V

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->d:Landroid/widget/ImageView;

    const p1, 0x7f09011a

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->e:Landroidx/cardview/widget/CardView;

    const p1, 0x7f090113

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->f:Landroidx/cardview/widget/CardView;

    const p1, 0x7f090110

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->l:Landroidx/cardview/widget/CardView;

    const p1, 0x7f09010f

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->m:Landroidx/cardview/widget/CardView;

    const p1, 0x7f090119

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->n:Landroidx/cardview/widget/CardView;

    const p1, 0x7f090115

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->o:Landroidx/cardview/widget/CardView;

    const p1, 0x7f090116

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->p:Landroidx/cardview/widget/CardView;

    const p1, 0x7f090114

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->q:Landroidx/cardview/widget/CardView;

    const p1, 0x7f090112

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->r:Landroidx/cardview/widget/CardView;

    const p1, 0x7f090111

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->s:Landroidx/cardview/widget/CardView;

    const p1, 0x7f09010e

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->t:Landroidx/cardview/widget/CardView;

    const p1, 0x7f09010c

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->u:Landroidx/cardview/widget/CardView;

    const p1, 0x7f09010d

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->v:Landroidx/cardview/widget/CardView;

    const p1, 0x7f090117

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->w:Landroidx/cardview/widget/CardView;

    const p1, 0x7f090118

    invoke-virtual {p0, p1}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->x:Landroidx/cardview/widget/CardView;

    iget-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->e:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/D;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, LY0/D;-><init>(Lcom/booklal/booklal/ChooseCategoryOfBook;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->f:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/D;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, LY0/D;-><init>(Lcom/booklal/booklal/ChooseCategoryOfBook;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->l:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/D;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, LY0/D;-><init>(Lcom/booklal/booklal/ChooseCategoryOfBook;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->m:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/D;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, LY0/D;-><init>(Lcom/booklal/booklal/ChooseCategoryOfBook;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->n:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/D;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, LY0/D;-><init>(Lcom/booklal/booklal/ChooseCategoryOfBook;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->o:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/D;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, LY0/D;-><init>(Lcom/booklal/booklal/ChooseCategoryOfBook;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->p:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/D;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, LY0/D;-><init>(Lcom/booklal/booklal/ChooseCategoryOfBook;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->q:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/D;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, LY0/D;-><init>(Lcom/booklal/booklal/ChooseCategoryOfBook;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->r:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/D;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, LY0/D;-><init>(Lcom/booklal/booklal/ChooseCategoryOfBook;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->s:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/D;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LY0/D;-><init>(Lcom/booklal/booklal/ChooseCategoryOfBook;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->t:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/D;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LY0/D;-><init>(Lcom/booklal/booklal/ChooseCategoryOfBook;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->u:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/D;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LY0/D;-><init>(Lcom/booklal/booklal/ChooseCategoryOfBook;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->v:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/D;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, LY0/D;-><init>(Lcom/booklal/booklal/ChooseCategoryOfBook;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->w:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/D;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, LY0/D;-><init>(Lcom/booklal/booklal/ChooseCategoryOfBook;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->x:Landroidx/cardview/widget/CardView;

    new-instance v0, LY0/D;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, LY0/D;-><init>(Lcom/booklal/booklal/ChooseCategoryOfBook;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/booklal/booklal/ChooseCategoryOfBook;->d:Landroid/widget/ImageView;

    new-instance v0, LY0/D;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, LY0/D;-><init>(Lcom/booklal/booklal/ChooseCategoryOfBook;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
