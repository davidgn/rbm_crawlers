package com.google.firebase.database.core.persistence;

import com.google.firebase.database.core.view.QuerySpec;
/* loaded from: classes2.dex */
public final class TrackedQuery {
    public final boolean active;
    public final boolean complete;
    public final long id;
    public final long lastUse;
    public final QuerySpec querySpec;

    public TrackedQuery(long j5, QuerySpec querySpec, long j6, boolean z4, boolean z5) {
        this.id = j5;
        if (querySpec.loadsAllData() && !querySpec.isDefault()) {
            throw new IllegalArgumentException("Can't create TrackedQuery for a non-default query that loads all data");
        }
        this.querySpec = querySpec;
        this.lastUse = j6;
        this.complete = z4;
        this.active = z5;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != TrackedQuery.class) {
            return false;
        }
        TrackedQuery trackedQuery = (TrackedQuery) obj;
        return this.id == trackedQuery.id && this.querySpec.equals(trackedQuery.querySpec) && this.lastUse == trackedQuery.lastUse && this.complete == trackedQuery.complete && this.active == trackedQuery.active;
    }

    public int hashCode() {
        int hashCode = this.querySpec.hashCode();
        int hashCode2 = Long.valueOf(this.lastUse).hashCode();
        int hashCode3 = Boolean.valueOf(this.complete).hashCode();
        return Boolean.valueOf(this.active).hashCode() + ((hashCode3 + ((hashCode2 + ((hashCode + (Long.valueOf(this.id).hashCode() * 31)) * 31)) * 31)) * 31);
    }

    public TrackedQuery setActiveState(boolean z4) {
        return new TrackedQuery(this.id, this.querySpec, this.lastUse, this.complete, z4);
    }

    public TrackedQuery setComplete() {
        return new TrackedQuery(this.id, this.querySpec, this.lastUse, true, this.active);
    }

    public String toString() {
        return "TrackedQuery{id=" + this.id + ", querySpec=" + this.querySpec + ", lastUse=" + this.lastUse + ", complete=" + this.complete + ", active=" + this.active + "}";
    }

    public TrackedQuery updateLastUse(long j5) {
        return new TrackedQuery(this.id, this.querySpec, j5, this.complete, this.active);
    }
}
