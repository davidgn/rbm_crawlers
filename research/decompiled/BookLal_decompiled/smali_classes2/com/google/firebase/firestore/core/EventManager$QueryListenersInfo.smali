.class Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryListenersInfo"
.end annotation


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/QueryListener;",
            ">;"
        }
    .end annotation
.end field

.field private targetId:I

.field private viewSnapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->listeners:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->listeners:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)Lcom/google/firebase/firestore/core/ViewSnapshot;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->viewSnapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;Lcom/google/firebase/firestore/core/ViewSnapshot;)Lcom/google/firebase/firestore/core/ViewSnapshot;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->viewSnapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)I
    .locals 0

    iget p0, p0, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->targetId:I

    return p0
.end method

.method public static synthetic access$202(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;I)I
    .locals 0

    iput p1, p0, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->targetId:I

    return p1
.end method
