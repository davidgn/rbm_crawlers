.class public final Lw2/b;
.super LD/b;
.source "SourceFile"


# instance fields
.field public final synthetic h:LL4/d;

.field public final synthetic i:Lw2/d;


# direct methods
.method public constructor <init>(Lw2/d;LL4/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/b;->i:Lw2/d;

    iput-object p2, p0, Lw2/b;->h:LL4/d;

    return-void
.end method


# virtual methods
.method public final d(I)V
    .locals 2

    iget-object v0, p0, Lw2/b;->i:Lw2/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lw2/d;->m:Z

    iget-object v0, p0, Lw2/b;->h:LL4/d;

    invoke-virtual {v0, p1}, LL4/d;->D(I)V

    return-void
.end method

.method public final e(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Lw2/b;->i:Lw2/d;

    iget v1, v0, Lw2/d;->c:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, v0, Lw2/d;->n:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lw2/d;->m:Z

    iget-object p1, v0, Lw2/d;->n:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    iget-object v1, p0, Lw2/b;->h:LL4/d;

    invoke-virtual {v1, p1, v0}, LL4/d;->E(Landroid/graphics/Typeface;Z)V

    return-void
.end method
