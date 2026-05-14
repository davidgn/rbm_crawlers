.class public Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Union;
.super Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Union"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LW2/H0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public apply(LW2/H0;)LW2/H0;
    .locals 3

    invoke-static {p1}, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;->coercedFieldValuesArray(LW2/H0;)LW2/d;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LW2/H0;

    invoke-static {p1, v1}, Lcom/google/firebase/firestore/model/Values;->contains(LW2/f;LW2/H0;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, LW2/d;->d(LW2/H0;)V

    goto :goto_0

    :cond_1
    invoke-static {}, LW2/H0;->A()LW2/F0;

    move-result-object v0

    invoke-virtual {v0, p1}, LW2/F0;->d(LW2/d;)V

    invoke-virtual {v0}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object p1

    check-cast p1, LW2/H0;

    return-object p1
.end method
