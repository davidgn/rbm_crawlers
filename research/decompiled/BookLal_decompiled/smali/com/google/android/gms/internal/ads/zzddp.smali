.class final synthetic Lcom/google/android/gms/internal/ads/zzddp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdht;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzddp;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzddp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzddp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzddp;->zza:Lcom/google/android/gms/internal/ads/zzddp;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;

    invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;->onAdMetadataChanged()V

    return-void
.end method
