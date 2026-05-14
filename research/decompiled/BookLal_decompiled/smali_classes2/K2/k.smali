.class public final LK2/k;
.super LK2/e;
.source "SourceFile"


# instance fields
.field public final synthetic c:LK2/l;


# direct methods
.method public constructor <init>(LK2/l;)V
    .locals 0

    iput-object p1, p0, LK2/k;->c:LK2/l;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LK2/k;->c:LK2/l;

    iget v1, v0, LK2/l;->f:I

    invoke-static {p1, v1}, LZ2/l;->i(II)V

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, v0, LK2/l;->e:[Ljava/lang/Object;

    aget-object v1, v0, p1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, v1, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, LK2/k;->c:LK2/l;

    iget v0, v0, LK2/l;->f:I

    return v0
.end method
