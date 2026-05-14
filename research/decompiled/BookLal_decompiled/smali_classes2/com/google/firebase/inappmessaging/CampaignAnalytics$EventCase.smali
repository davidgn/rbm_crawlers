.class public final enum Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CampaignAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

.field public static final enum DISMISS_TYPE:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

.field public static final enum EVENT_NOT_SET:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

.field public static final enum EVENT_TYPE:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

.field public static final enum FETCH_ERROR_REASON:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

.field public static final enum RENDER_ERROR_REASON:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    const/4 v1, 0x5

    const-string v2, "EVENT_TYPE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->EVENT_TYPE:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    new-instance v1, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    const/4 v2, 0x1

    const/4 v4, 0x6

    const-string v5, "DISMISS_TYPE"

    invoke-direct {v1, v5, v2, v4}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->DISMISS_TYPE:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    new-instance v2, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    const/4 v4, 0x2

    const/4 v5, 0x7

    const-string v6, "RENDER_ERROR_REASON"

    invoke-direct {v2, v6, v4, v5}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->RENDER_ERROR_REASON:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    new-instance v4, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    const/4 v5, 0x3

    const/16 v6, 0x8

    const-string v7, "FETCH_ERROR_REASON"

    invoke-direct {v4, v7, v5, v6}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->FETCH_ERROR_REASON:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    new-instance v5, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    const-string v6, "EVENT_NOT_SET"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v3}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->EVENT_NOT_SET:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    filled-new-array {v0, v1, v2, v4, v5}, [Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->$VALUES:[Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

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

    iput p3, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x5

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->FETCH_ERROR_REASON:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->RENDER_ERROR_REASON:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->DISMISS_TYPE:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->EVENT_TYPE:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->EVENT_NOT_SET:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    return-object p0
.end method

.method public static valueOf(I)Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->forNumber(I)Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;
    .locals 1

    .line 1
    const-class v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->$VALUES:[Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    invoke-virtual {v0}, [Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->value:I

    return v0
.end method
