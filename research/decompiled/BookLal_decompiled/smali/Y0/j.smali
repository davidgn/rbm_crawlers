.class public final LY0/j;
.super Lu0/y;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Ljava/util/ArrayList;

.field public f:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Lu0/y;-><init>()V

    iput-object p1, p0, LY0/j;->d:Landroid/content/Context;

    iput-object p2, p0, LY0/j;->e:Ljava/util/ArrayList;

    iput-object p2, p0, LY0/j;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, LY0/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final b(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final c(I)I
    .locals 0

    return p1
.end method

.method public final e(Lu0/W;I)V
    .locals 4

    check-cast p1, LY0/i;

    iget-object v0, p0, LY0/j;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LY0/e;

    iget-object v0, p1, LY0/i;->A:Landroid/widget/TextView;

    iget-object v1, p2, LY0/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, LY0/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p1, LY0/i;->B:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, LY0/i;->C:Landroid/widget/TextView;

    iget-object v1, p2, LY0/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, LY0/i;->D:Landroid/widget/TextView;

    iget-object v1, p2, LY0/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, LD0/e;

    iget-object v1, p0, LY0/j;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, LD0/e;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, LD0/e;->a:LD0/d;

    const/high16 v2, 0x40d00000    # 6.5f

    iput v2, v1, LD0/d;->h:F

    iget-object v3, v1, LD0/d;->b:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/high16 v2, 0x428c0000    # 70.0f

    iput v2, v1, LD0/d;->q:F

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-virtual {v0}, LD0/e;->start()V

    iget-object v1, p1, LY0/i;->z:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/bumptech/glide/b;->e(Landroid/widget/ImageView;)Lcom/bumptech/glide/i;

    move-result-object v2

    iget-object v3, p2, LY0/e;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/i;->b(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Lu1/a;->i(Landroid/graphics/drawable/Drawable;)Lu1/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->t(Landroid/widget/ImageView;)V

    new-instance v0, LA2/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p2}, LA2/p;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p1, LY0/i;->E:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final f(Landroid/view/ViewGroup;I)Lu0/W;
    .locals 1

    iget-object p1, p0, LY0/j;->d:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c006c

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance p2, LY0/i;

    invoke-direct {p2, p1}, Lu0/W;-><init>(Landroid/view/View;)V

    const v0, 0x7f090204

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, LY0/i;->z:Landroid/widget/ImageView;

    const v0, 0x7f090206

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, LY0/i;->A:Landroid/widget/TextView;

    const v0, 0x7f090205

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, LY0/i;->B:Landroid/widget/TextView;

    const v0, 0x7f090201

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, LY0/i;->C:Landroid/widget/TextView;

    const v0, 0x7f090203

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p2, LY0/i;->E:Landroid/widget/RelativeLayout;

    const v0, 0x7f090207

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p2, LY0/i;->D:Landroid/widget/TextView;

    return-object p2
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    new-instance v0, LT/c;

    invoke-direct {v0, p0}, LT/c;-><init>(LY0/j;)V

    return-object v0
.end method
