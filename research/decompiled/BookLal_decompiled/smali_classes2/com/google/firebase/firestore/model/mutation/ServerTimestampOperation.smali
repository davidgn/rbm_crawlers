.class public Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/firestore/model/mutation/TransformOperation;


# static fields
.field private static final SHARED_INSTANCE:Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;

    invoke-direct {v0}, Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;->SHARED_INSTANCE:Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;
    .locals 1

    sget-object v0, Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;->SHARED_INSTANCE:Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;

    return-object v0
.end method


# virtual methods
.method public applyToLocalView(LW2/H0;Lcom/google/firebase/Timestamp;)LW2/H0;
    .locals 0

    invoke-static {p2, p1}, Lcom/google/firebase/firestore/model/ServerTimestamps;->valueOf(Lcom/google/firebase/Timestamp;LW2/H0;)LW2/H0;

    move-result-object p1

    return-object p1
.end method

.method public applyToRemoteDocument(LW2/H0;LW2/H0;)LW2/H0;
    .locals 0

    return-object p2
.end method

.method public computeBaseValue(LW2/H0;)LW2/H0;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
