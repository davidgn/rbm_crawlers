.class public final enum Lcom/google/firebase/inappmessaging/FetchErrorReason;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/S;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/FetchErrorReason$FetchErrorReasonVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/inappmessaging/FetchErrorReason;",
        ">;",
        "Lcom/google/protobuf/S;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/inappmessaging/FetchErrorReason;

.field public static final enum CLIENT_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

.field public static final CLIENT_ERROR_VALUE:I = 0x2

.field public static final enum NETWORK_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

.field public static final NETWORK_ERROR_VALUE:I = 0x3

.field public static final enum SERVER_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

.field public static final SERVER_ERROR_VALUE:I = 0x1

.field public static final enum UNSPECIFIED_FETCH_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

.field public static final UNSPECIFIED_FETCH_ERROR_VALUE:I

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
    .locals 6

    new-instance v0, Lcom/google/firebase/inappmessaging/FetchErrorReason;

    const-string v1, "UNSPECIFIED_FETCH_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/inappmessaging/FetchErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/inappmessaging/FetchErrorReason;->UNSPECIFIED_FETCH_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

    new-instance v1, Lcom/google/firebase/inappmessaging/FetchErrorReason;

    const-string v2, "SERVER_ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/firebase/inappmessaging/FetchErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firebase/inappmessaging/FetchErrorReason;->SERVER_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

    new-instance v2, Lcom/google/firebase/inappmessaging/FetchErrorReason;

    const-string v3, "CLIENT_ERROR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/firebase/inappmessaging/FetchErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/firebase/inappmessaging/FetchErrorReason;->CLIENT_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

    new-instance v3, Lcom/google/firebase/inappmessaging/FetchErrorReason;

    const-string v4, "NETWORK_ERROR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/firebase/inappmessaging/FetchErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/firebase/inappmessaging/FetchErrorReason;->NETWORK_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/firebase/inappmessaging/FetchErrorReason;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/inappmessaging/FetchErrorReason;->$VALUES:[Lcom/google/firebase/inappmessaging/FetchErrorReason;

    new-instance v0, Lcom/google/firebase/inappmessaging/FetchErrorReason$1;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/FetchErrorReason$1;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/FetchErrorReason;->internalValueMap:Lcom/google/protobuf/T;

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

    iput p3, p0, Lcom/google/firebase/inappmessaging/FetchErrorReason;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/firebase/inappmessaging/FetchErrorReason;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/firebase/inappmessaging/FetchErrorReason;->NETWORK_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/firebase/inappmessaging/FetchErrorReason;->CLIENT_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/firebase/inappmessaging/FetchErrorReason;->SERVER_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/firebase/inappmessaging/FetchErrorReason;->UNSPECIFIED_FETCH_ERROR:Lcom/google/firebase/inappmessaging/FetchErrorReason;

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

    sget-object v0, Lcom/google/firebase/inappmessaging/FetchErrorReason;->internalValueMap:Lcom/google/protobuf/T;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/U;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/FetchErrorReason$FetchErrorReasonVerifier;->INSTANCE:Lcom/google/protobuf/U;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/firebase/inappmessaging/FetchErrorReason;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/FetchErrorReason;->forNumber(I)Lcom/google/firebase/inappmessaging/FetchErrorReason;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/FetchErrorReason;
    .locals 1

    .line 1
    const-class v0, Lcom/google/firebase/inappmessaging/FetchErrorReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/FetchErrorReason;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/inappmessaging/FetchErrorReason;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/FetchErrorReason;->$VALUES:[Lcom/google/firebase/inappmessaging/FetchErrorReason;

    invoke-virtual {v0}, [Lcom/google/firebase/inappmessaging/FetchErrorReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/inappmessaging/FetchErrorReason;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/inappmessaging/FetchErrorReason;->value:I

    return v0
.end method
