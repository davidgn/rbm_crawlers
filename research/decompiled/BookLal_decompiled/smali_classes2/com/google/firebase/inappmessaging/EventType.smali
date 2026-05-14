.class public final enum Lcom/google/firebase/inappmessaging/EventType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/S;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/EventType$EventTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/inappmessaging/EventType;",
        ">;",
        "Lcom/google/protobuf/S;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/inappmessaging/EventType;

.field public static final enum CLICK_EVENT_TYPE:Lcom/google/firebase/inappmessaging/EventType;

.field public static final CLICK_EVENT_TYPE_VALUE:I = 0x2

.field public static final enum IMPRESSION_EVENT_TYPE:Lcom/google/firebase/inappmessaging/EventType;

.field public static final IMPRESSION_EVENT_TYPE_VALUE:I = 0x1

.field public static final enum UNKNOWN_EVENT_TYPE:Lcom/google/firebase/inappmessaging/EventType;

.field public static final UNKNOWN_EVENT_TYPE_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/T;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/T;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/firebase/inappmessaging/EventType;

    const-string v1, "UNKNOWN_EVENT_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/inappmessaging/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/inappmessaging/EventType;->UNKNOWN_EVENT_TYPE:Lcom/google/firebase/inappmessaging/EventType;

    new-instance v1, Lcom/google/firebase/inappmessaging/EventType;

    const-string v2, "IMPRESSION_EVENT_TYPE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/firebase/inappmessaging/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firebase/inappmessaging/EventType;->IMPRESSION_EVENT_TYPE:Lcom/google/firebase/inappmessaging/EventType;

    new-instance v2, Lcom/google/firebase/inappmessaging/EventType;

    const-string v3, "CLICK_EVENT_TYPE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/firebase/inappmessaging/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/firebase/inappmessaging/EventType;->CLICK_EVENT_TYPE:Lcom/google/firebase/inappmessaging/EventType;

    filled-new-array {v0, v1, v2}, [Lcom/google/firebase/inappmessaging/EventType;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/inappmessaging/EventType;->$VALUES:[Lcom/google/firebase/inappmessaging/EventType;

    new-instance v0, Lcom/google/firebase/inappmessaging/EventType$1;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/EventType$1;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/EventType;->internalValueMap:Lcom/google/protobuf/T;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/firebase/inappmessaging/EventType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/firebase/inappmessaging/EventType;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/firebase/inappmessaging/EventType;->CLICK_EVENT_TYPE:Lcom/google/firebase/inappmessaging/EventType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/firebase/inappmessaging/EventType;->IMPRESSION_EVENT_TYPE:Lcom/google/firebase/inappmessaging/EventType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/firebase/inappmessaging/EventType;->UNKNOWN_EVENT_TYPE:Lcom/google/firebase/inappmessaging/EventType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/T;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/T;"
        }
    .end annotation

    sget-object v0, Lcom/google/firebase/inappmessaging/EventType;->internalValueMap:Lcom/google/protobuf/T;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/U;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/EventType$EventTypeVerifier;->INSTANCE:Lcom/google/protobuf/U;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/firebase/inappmessaging/EventType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/EventType;->forNumber(I)Lcom/google/firebase/inappmessaging/EventType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/EventType;
    .locals 1

    .line 1
    const-class v0, Lcom/google/firebase/inappmessaging/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/EventType;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/inappmessaging/EventType;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/EventType;->$VALUES:[Lcom/google/firebase/inappmessaging/EventType;

    invoke-virtual {v0}, [Lcom/google/firebase/inappmessaging/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/inappmessaging/EventType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/inappmessaging/EventType;->value:I

    return v0
.end method
