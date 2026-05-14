.class public final Ls3/r;
.super Lj3/S;
.source "SourceFile"


# static fields
.field public static final h:Lj3/a;

.field public static final i:Lj3/r0;


# instance fields
.field public final c:Lj3/i;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/Random;

.field public f:Lj3/q;

.field public g:Ls3/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj3/a;

    const-string v1, "state-info"

    invoke-direct {v0, v1}, Lj3/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Ls3/r;->h:Lj3/a;

    sget-object v0, Lj3/r0;->e:Lj3/r0;

    const-string v1, "no subchannels ready"

    invoke-virtual {v0, v1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v0

    sput-object v0, Ls3/r;->i:Lj3/r0;

    return-void
.end method

.method public constructor <init>(Lj3/i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ls3/r;->d:Ljava/util/HashMap;

    new-instance v0, Ls3/n;

    sget-object v1, Ls3/r;->i:Lj3/r0;

    invoke-direct {v0, v1}, Ls3/n;-><init>(Lj3/r0;)V

    iput-object v0, p0, Ls3/r;->g:Ls3/q;

    iput-object p1, p0, Ls3/r;->c:Lj3/i;

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Ls3/r;->e:Ljava/util/Random;

    return-void
.end method

.method public static g(Lj3/P;)Ls3/p;
    .locals 1

    invoke-virtual {p0}, Lj3/P;->c()Lj3/b;

    move-result-object p0

    sget-object v0, Ls3/r;->h:Lj3/a;

    iget-object p0, p0, Lj3/b;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p0, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls3/p;

    const-string v0, "STATE_INFO"

    invoke-static {p0, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final a(Lj3/O;)Z
    .locals 11

    iget-object v0, p1, Lj3/O;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lj3/r0;->m:Lj3/r0;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NameResolver returned no usable address. addrs="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", attrs="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lj3/O;->b:Lj3/b;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    invoke-virtual {p0, p1}, Ls3/r;->c(Lj3/r0;)V

    return v2

    :cond_0
    iget-object p1, p0, Ls3/r;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj3/y;

    new-instance v6, Lj3/y;

    iget-object v7, v4, Lj3/y;->a:Ljava/util/List;

    sget-object v8, Lj3/b;->b:Lj3/b;

    invoke-direct {v6, v7, v8}, Lj3/y;-><init>(Ljava/util/List;Lj3/b;)V

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lj3/y;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj3/y;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj3/P;

    if-eqz v7, :cond_2

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v7, v1}, Lj3/P;->h(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    sget-object v7, Lj3/b;->b:Lj3/b;

    sget-object v8, Ls3/r;->h:Lj3/a;

    new-instance v9, Ls3/p;

    sget-object v10, Lj3/q;->d:Lj3/q;

    invoke-static {v10}, Lj3/r;->a(Lj3/q;)Lj3/r;

    move-result-object v10

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v10, v9, Ls3/p;->a:Lj3/r;

    new-instance v10, Ljava/util/IdentityHashMap;

    invoke-direct {v10, v3}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-virtual {v10, v8, v9}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v8, v5, [I

    aput v5, v8, v3

    aput v2, v8, v2

    const-class v3, Ljava/lang/Object;

    invoke-static {v3, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v7, v7, Lj3/b;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v7}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lj3/a;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v10, v9, v8}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    new-instance v7, Lj3/b;

    invoke-direct {v7, v10}, Lj3/b;-><init>(Ljava/util/IdentityHashMap;)V

    new-instance v8, LJ2/e;

    invoke-direct {v8, v1, v7, v3}, LJ2/e;-><init>(Ljava/util/List;Lj3/b;[[Ljava/lang/Object;)V

    iget-object v1, p0, Ls3/r;->c:Lj3/i;

    invoke-virtual {v1, v8}, Lj3/i;->a(LJ2/e;)Lj3/P;

    move-result-object v1

    const-string v3, "subchannel"

    invoke-static {v1, v3}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lj3/G;

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-direct {v3, v7, p0, v1, v8}, Lj3/G;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v3}, Lj3/P;->g(Lj3/Q;)V

    invoke-virtual {p1, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lj3/P;->e()V

    goto/16 :goto_1

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj3/y;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj3/P;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Ls3/r;->h()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj3/P;

    invoke-virtual {v0}, Lj3/P;->f()V

    invoke-static {v0}, Ls3/r;->g(Lj3/P;)Ls3/p;

    move-result-object v0

    sget-object v1, Lj3/q;->e:Lj3/q;

    invoke-static {v1}, Lj3/r;->a(Lj3/q;)Lj3/r;

    move-result-object v1

    iput-object v1, v0, Ls3/p;->a:Lj3/r;

    goto :goto_4

    :cond_7
    return v3
.end method

.method public final c(Lj3/r0;)V
    .locals 2

    iget-object v0, p0, Ls3/r;->f:Lj3/q;

    sget-object v1, Lj3/q;->b:Lj3/q;

    if-eq v0, v1, :cond_0

    sget-object v0, Lj3/q;->c:Lj3/q;

    new-instance v1, Ls3/n;

    invoke-direct {v1, p1}, Ls3/n;-><init>(Lj3/r0;)V

    invoke-virtual {p0, v0, v1}, Ls3/r;->i(Lj3/q;Ls3/q;)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Ls3/r;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj3/P;

    invoke-virtual {v2}, Lj3/P;->f()V

    invoke-static {v2}, Ls3/r;->g(Lj3/P;)Ls3/p;

    move-result-object v2

    sget-object v3, Lj3/q;->e:Lj3/q;

    invoke-static {v3}, Lj3/r;->a(Lj3/q;)Lj3/r;

    move-result-object v3

    iput-object v3, v2, Ls3/p;->a:Lj3/r;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final h()V
    .locals 7

    iget-object v0, p0, Ls3/r;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v4, Lj3/q;->b:Lj3/q;

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj3/P;

    invoke-static {v3}, Ls3/r;->g(Lj3/P;)Ls3/p;

    move-result-object v5

    iget-object v5, v5, Ls3/p;->a:Lj3/r;

    iget-object v5, v5, Lj3/r;->a:Lj3/q;

    if-ne v5, v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sget-object v1, Ls3/r;->i:Lj3/r0;

    const/4 v2, 0x0

    move-object v3, v1

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    sget-object v5, Lj3/q;->a:Lj3/q;

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj3/P;

    invoke-static {v4}, Ls3/r;->g(Lj3/P;)Ls3/p;

    move-result-object v4

    iget-object v4, v4, Ls3/p;->a:Lj3/r;

    iget-object v6, v4, Lj3/r;->a:Lj3/q;

    if-eq v6, v5, :cond_3

    sget-object v5, Lj3/q;->d:Lj3/q;

    if-ne v6, v5, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    if-eq v3, v1, :cond_5

    invoke-virtual {v3}, Lj3/r0;->f()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_5
    iget-object v3, v4, Lj3/r;->b:Lj3/r0;

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    sget-object v5, Lj3/q;->c:Lj3/q;

    :goto_2
    new-instance v0, Ls3/n;

    invoke-direct {v0, v3}, Ls3/n;-><init>(Lj3/r0;)V

    invoke-virtual {p0, v5, v0}, Ls3/r;->i(Lj3/q;Ls3/q;)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Ls3/r;->e:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    new-instance v1, Ls3/o;

    invoke-direct {v1, v2, v0}, Ls3/o;-><init>(Ljava/util/ArrayList;I)V

    invoke-virtual {p0, v4, v1}, Ls3/r;->i(Lj3/q;Ls3/q;)V

    :goto_3
    return-void
.end method

.method public final i(Lj3/q;Ls3/q;)V
    .locals 1

    iget-object v0, p0, Ls3/r;->f:Lj3/q;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ls3/r;->g:Ls3/q;

    invoke-virtual {p2, v0}, Ls3/q;->h(Ls3/q;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Ls3/r;->c:Lj3/i;

    invoke-virtual {v0, p1, p2}, Lj3/i;->i(Lj3/q;Lj3/B;)V

    iput-object p1, p0, Ls3/r;->f:Lj3/q;

    iput-object p2, p0, Ls3/r;->g:Ls3/q;

    :cond_1
    return-void
.end method
