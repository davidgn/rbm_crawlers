.class Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/snapshot/CompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompoundHashBuilder"
.end annotation


# instance fields
.field private final currentHashes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentPath:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;"
        }
    .end annotation
.end field

.field private currentPathDepth:I

.field private final currentPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/Path;",
            ">;"
        }
    .end annotation
.end field

.field private lastLeafDepth:I

.field private needsComma:Z

.field private optHashValueBuilder:Ljava/lang/StringBuilder;

.field private final splitStrategy:Lcom/google/firebase/database/snapshot/CompoundHash$SplitStrategy;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/snapshot/CompoundHash$SplitStrategy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPath:Ljava/util/Stack;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->lastLeafDepth:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->needsComma:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPaths:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentHashes:Ljava/util/List;

    iput-object p1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->splitStrategy:Lcom/google/firebase/database/snapshot/CompoundHash$SplitStrategy;

    return-void
.end method

.method public static synthetic access$000(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->finishHashing()V

    return-void
.end method

.method public static synthetic access$100(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPaths:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentHashes:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;Lcom/google/firebase/database/snapshot/LeafNode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->processLeaf(Lcom/google/firebase/database/snapshot/LeafNode;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;Lcom/google/firebase/database/snapshot/ChildKey;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->startChild(Lcom/google/firebase/database/snapshot/ChildKey;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->endChild()V

    return-void
.end method

.method private appendKey(Ljava/lang/StringBuilder;Lcom/google/firebase/database/snapshot/ChildKey;)V
    .locals 0

    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/firebase/database/core/utilities/Utilities;->stringHashV2Representation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private currentPath(I)Lcom/google/firebase/database/core/Path;
    .locals 3

    .line 2
    new-array v0, p1, [Lcom/google/firebase/database/snapshot/ChildKey;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPath:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/snapshot/ChildKey;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/google/firebase/database/core/Path;

    invoke-direct {p1, v0}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;)V

    return-object p1
.end method

.method private endChild()V
    .locals 3

    iget v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->buildingRange()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iput-boolean v1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->needsComma:Z

    return-void
.end method

.method private endRange()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->buildingRange()Z

    move-result v0

    const-string v1, "Can\'t end range without starting a range!"

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    const-string v2, ")"

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->lastLeafDepth:I

    invoke-direct {p0, v0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPath(I)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/database/core/utilities/Utilities;->sha1HexDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentHashes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPaths:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method private ensureRange()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->buildingRange()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    invoke-direct {p0, v0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPath(I)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/snapshot/ChildKey;

    iget-object v2, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, v1}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->appendKey(Ljava/lang/StringBuilder;Lcom/google/firebase/database/snapshot/ChildKey;)V

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    const-string v2, ":("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->needsComma:Z

    :cond_1
    return-void
.end method

.method private finishHashing()V
    .locals 2

    iget v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Can\'t finish hashing in the middle processing a child"

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->buildingRange()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->endRange()V

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentHashes:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private processLeaf(Lcom/google/firebase/database/snapshot/LeafNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/LeafNode<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->ensureRange()V

    iget v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    iput v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->lastLeafDepth:I

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/firebase/database/snapshot/Node$HashVersion;->V2:Lcom/google/firebase/database/snapshot/Node$HashVersion;

    invoke-interface {p1, v1}, Lcom/google/firebase/database/snapshot/Node;->getHashRepresentation(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->needsComma:Z

    iget-object p1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->splitStrategy:Lcom/google/firebase/database/snapshot/CompoundHash$SplitStrategy;

    invoke-interface {p1, p0}, Lcom/google/firebase/database/snapshot/CompoundHash$SplitStrategy;->shouldSplit(Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->endRange()V

    :cond_0
    return-void
.end method

.method private startChild(Lcom/google/firebase/database/snapshot/ChildKey;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->ensureRange()V

    iget-boolean v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->needsComma:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->appendKey(Ljava/lang/StringBuilder;Lcom/google/firebase/database/snapshot/ChildKey;)V

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    const-string v1, ":("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPath:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPath:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPath:Ljava/util/Stack;

    iget v1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget p1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->needsComma:Z

    return-void
.end method


# virtual methods
.method public buildingRange()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public currentHashLength()I
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->optHashValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public currentPath()Lcom/google/firebase/database/core/Path;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPathDepth:I

    invoke-direct {p0, v0}, Lcom/google/firebase/database/snapshot/CompoundHash$CompoundHashBuilder;->currentPath(I)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    return-object v0
.end method
