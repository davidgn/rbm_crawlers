.class public final LK2/d;
.super LK2/e;
.source "SourceFile"


# instance fields
.field public final transient c:I

.field public final transient d:I

.field public final synthetic e:LK2/e;


# direct methods
.method public constructor <init>(LK2/e;II)V
    .locals 0

    iput-object p1, p0, LK2/d;->e:LK2/e;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput p2, p0, LK2/d;->c:I

    iput p3, p0, LK2/d;->d:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LK2/d;->d:I

    invoke-static {p1, v0}, LZ2/l;->i(II)V

    iget v0, p0, LK2/d;->c:I

    add-int/2addr p1, v0

    iget-object v0, p0, LK2/d;->e:LK2/e;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LK2/d;->e:LK2/e;

    invoke-virtual {v0}, LK2/b;->h()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LK2/e;->m(I)LK2/c;

    move-result-object v0

    return-object v0
.end method

.method public final j()I
    .locals 2

    iget-object v0, p0, LK2/d;->e:LK2/e;

    invoke-virtual {v0}, LK2/b;->k()I

    move-result v0

    iget v1, p0, LK2/d;->c:I

    add-int/2addr v0, v1

    iget v1, p0, LK2/d;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final k()I
    .locals 2

    iget-object v0, p0, LK2/d;->e:LK2/e;

    invoke-virtual {v0}, LK2/b;->k()I

    move-result v0

    iget v1, p0, LK2/d;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, LK2/e;->m(I)LK2/c;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, LK2/e;->m(I)LK2/c;

    move-result-object p1

    return-object p1
.end method

.method public final n(II)LK2/e;
    .locals 1

    iget v0, p0, LK2/d;->d:I

    invoke-static {p1, p2, v0}, LZ2/l;->l(III)V

    iget v0, p0, LK2/d;->c:I

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    iget-object v0, p0, LK2/d;->e:LK2/e;

    invoke-virtual {v0, p1, p2}, LK2/e;->n(II)LK2/e;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, LK2/d;->d:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, LK2/d;->n(II)LK2/e;

    move-result-object p1

    return-object p1
.end method
