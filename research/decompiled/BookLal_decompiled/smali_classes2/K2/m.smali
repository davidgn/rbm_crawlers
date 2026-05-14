.class public final LK2/m;
.super LK2/g;
.source "SourceFile"


# instance fields
.field public final transient d:LK2/o;

.field public final transient e:LK2/n;


# direct methods
.method public constructor <init>(LK2/o;LK2/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, LK2/m;->d:LK2/o;

    iput-object p2, p0, LK2/m;->e:LK2/n;

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, LK2/m;->e:LK2/n;

    invoke-virtual {v0, p1}, LK2/e;->a([Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, LK2/m;->d:LK2/o;

    invoke-virtual {v0, p1}, LK2/o;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, LK2/m;->e:LK2/n;

    invoke-virtual {v1, v0}, LK2/e;->m(I)LK2/c;

    move-result-object v0

    return-object v0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, LK2/m;->d:LK2/o;

    iget v0, v0, LK2/o;->f:I

    return v0
.end method
