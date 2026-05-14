package com.google.firebase.database.collection;

import com.google.firebase.database.collection.LLRBNode;
import java.util.Comparator;
/* loaded from: classes2.dex */
public abstract class LLRBValueNode<K, V> implements LLRBNode<K, V> {
    private final K key;
    private LLRBNode<K, V> left;
    private final LLRBNode<K, V> right;
    private final V value;

    public LLRBValueNode(K k5, V v5, LLRBNode<K, V> lLRBNode, LLRBNode<K, V> lLRBNode2) {
        this.key = k5;
        this.value = v5;
        this.left = lLRBNode == null ? LLRBEmptyNode.getInstance() : lLRBNode;
        this.right = lLRBNode2 == null ? LLRBEmptyNode.getInstance() : lLRBNode2;
    }

    private LLRBValueNode<K, V> colorFlip() {
        LLRBNode<K, V> lLRBNode = this.left;
        LLRBNode<K, V> copy = lLRBNode.copy(null, null, oppositeColor(lLRBNode), null, null);
        LLRBNode<K, V> lLRBNode2 = this.right;
        return copy((LLRBValueNode<K, V>) null, (K) null, oppositeColor(this), (LLRBNode<LLRBValueNode<K, V>, K>) copy, (LLRBNode<LLRBValueNode<K, V>, K>) lLRBNode2.copy(null, null, oppositeColor(lLRBNode2), null, null));
    }

    private LLRBValueNode<K, V> fixUp() {
        LLRBValueNode<K, V> rotateLeft = (!this.right.isRed() || this.left.isRed()) ? this : rotateLeft();
        if (rotateLeft.left.isRed() && ((LLRBValueNode) rotateLeft.left).left.isRed()) {
            rotateLeft = rotateLeft.rotateRight();
        }
        return (rotateLeft.left.isRed() && rotateLeft.right.isRed()) ? rotateLeft.colorFlip() : rotateLeft;
    }

    private LLRBValueNode<K, V> moveRedLeft() {
        LLRBValueNode<K, V> colorFlip = colorFlip();
        return colorFlip.getRight().getLeft().isRed() ? colorFlip.copy(null, null, null, ((LLRBValueNode) colorFlip.getRight()).rotateRight()).rotateLeft().colorFlip() : colorFlip;
    }

    private LLRBValueNode<K, V> moveRedRight() {
        LLRBValueNode<K, V> colorFlip = colorFlip();
        return colorFlip.getLeft().getLeft().isRed() ? colorFlip.rotateRight().colorFlip() : colorFlip;
    }

    private static LLRBNode.Color oppositeColor(LLRBNode lLRBNode) {
        return lLRBNode.isRed() ? LLRBNode.Color.BLACK : LLRBNode.Color.RED;
    }

    private LLRBNode<K, V> removeMin() {
        if (this.left.isEmpty()) {
            return LLRBEmptyNode.getInstance();
        }
        LLRBValueNode<K, V> moveRedLeft = (getLeft().isRed() || getLeft().getLeft().isRed()) ? this : moveRedLeft();
        return moveRedLeft.copy(null, null, ((LLRBValueNode) moveRedLeft.left).removeMin(), null).fixUp();
    }

    private LLRBValueNode<K, V> rotateLeft() {
        return (LLRBValueNode) this.right.copy(null, null, getColor(), copy((LLRBValueNode<K, V>) null, (K) null, LLRBNode.Color.RED, (LLRBNode<LLRBValueNode<K, V>, K>) null, (LLRBNode<LLRBValueNode<K, V>, K>) ((LLRBValueNode) this.right).left), null);
    }

    private LLRBValueNode<K, V> rotateRight() {
        return (LLRBValueNode) this.left.copy(null, null, getColor(), null, copy((LLRBValueNode<K, V>) null, (K) null, LLRBNode.Color.RED, (LLRBNode<LLRBValueNode<K, V>, K>) ((LLRBValueNode) this.left).right, (LLRBNode<LLRBValueNode<K, V>, K>) null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.firebase.database.collection.LLRBNode
    public /* bridge */ /* synthetic */ LLRBNode copy(Object obj, Object obj2, LLRBNode.Color color, LLRBNode lLRBNode, LLRBNode lLRBNode2) {
        return copy((LLRBValueNode<K, V>) obj, obj2, color, (LLRBNode<LLRBValueNode<K, V>, Object>) lLRBNode, (LLRBNode<LLRBValueNode<K, V>, Object>) lLRBNode2);
    }

    public abstract LLRBValueNode<K, V> copy(K k5, V v5, LLRBNode<K, V> lLRBNode, LLRBNode<K, V> lLRBNode2);

    public abstract LLRBNode.Color getColor();

    @Override // com.google.firebase.database.collection.LLRBNode
    public K getKey() {
        return this.key;
    }

    @Override // com.google.firebase.database.collection.LLRBNode
    public LLRBNode<K, V> getLeft() {
        return this.left;
    }

    @Override // com.google.firebase.database.collection.LLRBNode
    public LLRBNode<K, V> getMax() {
        return this.right.isEmpty() ? this : this.right.getMax();
    }

    @Override // com.google.firebase.database.collection.LLRBNode
    public LLRBNode<K, V> getMin() {
        return this.left.isEmpty() ? this : this.left.getMin();
    }

    @Override // com.google.firebase.database.collection.LLRBNode
    public LLRBNode<K, V> getRight() {
        return this.right;
    }

    @Override // com.google.firebase.database.collection.LLRBNode
    public V getValue() {
        return this.value;
    }

    @Override // com.google.firebase.database.collection.LLRBNode
    public void inOrderTraversal(LLRBNode.NodeVisitor<K, V> nodeVisitor) {
        this.left.inOrderTraversal(nodeVisitor);
        nodeVisitor.visitEntry(this.key, this.value);
        this.right.inOrderTraversal(nodeVisitor);
    }

    @Override // com.google.firebase.database.collection.LLRBNode
    public LLRBNode<K, V> insert(K k5, V v5, Comparator<K> comparator) {
        int compare = comparator.compare(k5, this.key);
        return (compare < 0 ? copy(null, null, this.left.insert(k5, v5, comparator), null) : compare == 0 ? copy(k5, v5, null, null) : copy(null, null, null, this.right.insert(k5, v5, comparator))).fixUp();
    }

    @Override // com.google.firebase.database.collection.LLRBNode
    public boolean isEmpty() {
        return false;
    }

    @Override // com.google.firebase.database.collection.LLRBNode
    public LLRBNode<K, V> remove(K k5, Comparator<K> comparator) {
        LLRBValueNode<K, V> copy;
        if (comparator.compare(k5, this.key) < 0) {
            LLRBValueNode<K, V> moveRedLeft = (this.left.isEmpty() || this.left.isRed() || ((LLRBValueNode) this.left).left.isRed()) ? this : moveRedLeft();
            copy = moveRedLeft.copy(null, null, moveRedLeft.left.remove(k5, comparator), null);
        } else {
            LLRBValueNode<K, V> rotateRight = this.left.isRed() ? rotateRight() : this;
            if (!rotateRight.right.isEmpty() && !rotateRight.right.isRed() && !((LLRBValueNode) rotateRight.right).left.isRed()) {
                rotateRight = rotateRight.moveRedRight();
            }
            if (comparator.compare(k5, rotateRight.key) == 0) {
                if (rotateRight.right.isEmpty()) {
                    return LLRBEmptyNode.getInstance();
                }
                LLRBNode<K, V> min = rotateRight.right.getMin();
                rotateRight = rotateRight.copy(min.getKey(), min.getValue(), null, ((LLRBValueNode) rotateRight.right).removeMin());
            }
            copy = rotateRight.copy(null, null, null, rotateRight.right.remove(k5, comparator));
        }
        return copy.fixUp();
    }

    public void setLeft(LLRBNode<K, V> lLRBNode) {
        this.left = lLRBNode;
    }

    @Override // com.google.firebase.database.collection.LLRBNode
    public boolean shortCircuitingInOrderTraversal(LLRBNode.ShortCircuitingNodeVisitor<K, V> shortCircuitingNodeVisitor) {
        if (this.left.shortCircuitingInOrderTraversal(shortCircuitingNodeVisitor) && shortCircuitingNodeVisitor.shouldContinue(this.key, this.value)) {
            return this.right.shortCircuitingInOrderTraversal(shortCircuitingNodeVisitor);
        }
        return false;
    }

    @Override // com.google.firebase.database.collection.LLRBNode
    public boolean shortCircuitingReverseOrderTraversal(LLRBNode.ShortCircuitingNodeVisitor<K, V> shortCircuitingNodeVisitor) {
        if (this.right.shortCircuitingReverseOrderTraversal(shortCircuitingNodeVisitor) && shortCircuitingNodeVisitor.shouldContinue(this.key, this.value)) {
            return this.left.shortCircuitingReverseOrderTraversal(shortCircuitingNodeVisitor);
        }
        return false;
    }

    @Override // com.google.firebase.database.collection.LLRBNode
    public LLRBValueNode<K, V> copy(K k5, V v5, LLRBNode.Color color, LLRBNode<K, V> lLRBNode, LLRBNode<K, V> lLRBNode2) {
        if (k5 == null) {
            k5 = this.key;
        }
        if (v5 == null) {
            v5 = this.value;
        }
        if (lLRBNode == null) {
            lLRBNode = this.left;
        }
        if (lLRBNode2 == null) {
            lLRBNode2 = this.right;
        }
        if (color == LLRBNode.Color.RED) {
            return new LLRBRedValueNode(k5, v5, lLRBNode, lLRBNode2);
        }
        return new LLRBBlackValueNode(k5, v5, lLRBNode, lLRBNode2);
    }
}
