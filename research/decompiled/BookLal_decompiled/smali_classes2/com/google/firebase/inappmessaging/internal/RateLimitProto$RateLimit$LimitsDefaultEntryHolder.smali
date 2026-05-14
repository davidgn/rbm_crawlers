.class final Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$LimitsDefaultEntryHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LimitsDefaultEntryHolder"
.end annotation


# static fields
.field static final defaultEntry:Lcom/google/protobuf/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/n0;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/google/protobuf/m1;->c:Lcom/google/protobuf/i1;

    sget-object v1, Lcom/google/protobuf/m1;->e:Lcom/google/protobuf/k1;

    invoke-static {}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->getDefaultInstance()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    move-result-object v2

    new-instance v3, Lcom/google/protobuf/n0;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/protobuf/n0;-><init>(Lcom/google/protobuf/i1;Lcom/google/protobuf/m1;Ljava/lang/Object;)V

    sput-object v3, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$LimitsDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/n0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
