.class final Lcom/google/android/gms/internal/ads/zzgvk;
.super Lcom/google/android/gms/internal/ads/zzgtj;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgvm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgvm;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzgtj;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvk;->zza:Lcom/google/android/gms/internal/ads/zzgvm;

    return-void
.end method


# virtual methods
.method public final zza(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvk;->zza:Lcom/google/android/gms/internal/ads/zzgvm;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
