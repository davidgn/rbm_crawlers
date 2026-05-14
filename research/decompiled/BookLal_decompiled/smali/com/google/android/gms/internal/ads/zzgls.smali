.class final synthetic Lcom/google/android/gms/internal/ads/zzgls;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgsa;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzglu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzglu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgls;->zza:Lcom/google/android/gms/internal/ads/zzglu;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgls;->zza:Lcom/google/android/gms/internal/ads/zzglu;

    check-cast p1, Ljava/net/SocketException;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzglu;->zzd(Ljava/net/SocketException;)Lcom/google/android/gms/internal/ads/zzges;

    move-result-object p1

    return-object p1
.end method
