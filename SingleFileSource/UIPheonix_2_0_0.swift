//----------------------------------------------------------------------------------------------------
// MARK:- UIPBaseCellModel.swift
// MARK:-
//----------------------------------------------------------------------------------------------------
//
//  UIPheonix
//  Copyright © 2016/2017 Mohsan Khan. All rights reserved.
//

//
//  https://github.com/MKGitHub/UIPheonix
//  http://www.xybernic.com
//  http://www.khanofsweden.com
//

//
//  Copyright 2016/2017 Mohsan Khan
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//


class UIPBaseCellModel:UIPBaseCellModelProtocol
{
    // MARK: UIPBaseCellModelProtocol
    var nameOfClass:String { get { return "\(type(of:self))" } }
    static var nameOfClass:String { get { return "\(self)" } }


    required init()
    {
        // empty
    }


    func setContents(with dictionary:Dictionary<String, Any>)
    {
        fatalError("[UIPheonix] You must override \(#function) in your subclass!")
    }


    // MARK:- Base Class Functions


    ///
    /// Currently this has no purpose other than to serve as a "forced" implementation
    /// that may/will come in hand when there is a need to debug a model.
    ///
    func toDictionary()
    -> Dictionary<String, Any>
    {
        fatalError("[UIPheonix] You must override \(#function) in your subclass!")
    }
}

//----------------------------------------------------------------------------------------------------
// MARK:- UIPBaseCellModelProtocol.swift
// MARK:-
//----------------------------------------------------------------------------------------------------
//
//  UIPheonix
//  Copyright © 2016/2017 Mohsan Khan. All rights reserved.
//

//
//  https://github.com/MKGitHub/UIPheonix
//  http://www.xybernic.com
//  http://www.khanofsweden.com
//

//
//  Copyright 2016/2017 Mohsan Khan
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import Foundation


protocol UIPBaseCellModelProtocol:class
{
    // we can't use "className" because that belongs to Objective-C NSObject
    var nameOfClass:String { get }
    static var nameOfClass:String { get }

    init()

    func setContents(with dictionary:Dictionary<String, Any>)
}

//----------------------------------------------------------------------------------------------------
// MARK:- UIPBaseCollectionViewCell.swift
// MARK:-
//----------------------------------------------------------------------------------------------------
//
//  UIPheonix
//  Copyright © 2016/2017 Mohsan Khan. All rights reserved.
//

//
//  https://github.com/MKGitHub/UIPheonix
//  http://www.xybernic.com
//  http://www.khanofsweden.com
//

//
//  Copyright 2016/2017 Mohsan Khan
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#if os(iOS) || os(tvOS)
    import UIKit
#elseif os(macOS)
    import Cocoa
#endif


class UIPBaseCollectionViewCell:UIPPlatformCollectionViewCell, UIPBaseCollectionViewCellProtocol
{
    // MARK: UIPPlatformCollectionViewCell


    #if os(tvOS)
    // MARK: Overriding Member
    override var canBecomeFocused:Bool
    {
        // by default, the cell view should not receive focus – its contents should receive focus instead
        return false
    }
    #endif


    ///
    /// For debugging purpose.
    ///
    /*override func didUpdateFocus(in context:UIFocusUpdateContext, with coordinator:UIFocusAnimationCoordinator)
    {
        super.didUpdateFocus(in:context, with:coordinator)

        if (context.nextFocusedView == self)
        {
            coordinator.addCoordinatedAnimations(
            {
                () -> Void in
                self.layer.backgroundColor = UIColor.blue().withAlphaComponent(0.2).cgColor
            },
            completion: nil)
        }
        else if (context.previouslyFocusedView == self)
        {
            coordinator.addCoordinatedAnimations(
            {
                () -> Void in
                self.layer.backgroundColor = UIColor.clear().cgColor
            },
            completion: nil)
        }
    }*/


    // MARK:- UIPBaseCollectionViewCellProtocol


    var nameOfClass:String { get { return "\(type(of:self))" } }
    static var nameOfClass:String { get { return "\(self)" } }


    func update(with model:Any, delegate:Any, for indexPath:IndexPath)
    -> UIPCellSize
    {
        fatalError("[UIPheonix] You must override \(#function) in your subclass!")
    }
}

//----------------------------------------------------------------------------------------------------
// MARK:- UIPBaseCollectionViewCellProtocol.swift
// MARK:-
//----------------------------------------------------------------------------------------------------
//
//  UIPheonix
//  Copyright © 2016/2017 Mohsan Khan. All rights reserved.
//

//
//  https://github.com/MKGitHub/UIPheonix
//  http://www.xybernic.com
//  http://www.khanofsweden.com
//

//
//  Copyright 2016/2017 Mohsan Khan
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import Foundation
import CoreGraphics


protocol UIPBaseCollectionViewCellProtocol:class
{
    // we can't use "className" because that belongs to Objective-C NSObject
    var nameOfClass:String { get }
    static var nameOfClass:String { get }

    func update(with model:Any, delegate:Any, for indexPath:IndexPath) -> UIPCellSize
}

//----------------------------------------------------------------------------------------------------
// MARK:- UIPBaseTableViewCell.swift
// MARK:-
//----------------------------------------------------------------------------------------------------
//
//  UIPheonix
//  Copyright © 2016/2017 Mohsan Khan. All rights reserved.
//

//
//  https://github.com/MKGitHub/UIPheonix
//  http://www.xybernic.com
//  http://www.khanofsweden.com
//

//
//  Copyright 2016/2017 Mohsan Khan
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#if os(iOS) || os(tvOS)
    import UIKit
#elseif os(macOS)
    import Cocoa
#endif


class UIPBaseTableViewCell:UIPPlatformTableViewCell, UIPBaseTableViewCellProtocol
{
    // MARK: UIPPlatformTableViewCell


    #if os(tvOS)
    // MARK: Overriding Member
    override var canBecomeFocused:Bool
    {
        // by default, the cell view should not receive focus – its contents should receive focus instead
        return false
    }
    #endif


    ///
    /// For debugging purpose.
    ///
    /*override func didUpdateFocus(in context:UIFocusUpdateContext, with coordinator:UIFocusAnimationCoordinator)
    {
        super.didUpdateFocus(in:context, with:coordinator)

        if (context.nextFocusedView == self)
        {
            coordinator.addCoordinatedAnimations(
            {
                () -> Void in
                self.layer.backgroundColor = UIColor.blue.withAlphaComponent(0.75).cgColor
            },
            completion: nil)
        }
        else if (context.previouslyFocusedView == self)
        {
            coordinator.addCoordinatedAnimations(
            {
                () -> Void in
                self.layer.backgroundColor = UIColor.clear.cgColor
            },
            completion: nil)
        }
    }*/


    // MARK:- UIPBaseTableViewCellProtocol


    var nameOfClass:String { get { return "\(type(of:self))" } }
    static var nameOfClass:String { get { return "\(self)" } }

    #if os(iOS) || os(tvOS)
        var rowHeight:CGFloat { get { return UITableViewAutomaticDimension } }
        var estimatedRowHeight:CGFloat { get { return UITableViewAutomaticDimension } }
    #elseif os(macOS)
        var rowHeight:CGFloat { get { return -1 } }             // macOS does not have any "Automatic Dimension" yet, -1 will crash and needs therefor to be overridden
        var estimatedRowHeight:CGFloat { get { return -1 } }    // macOS does not have any "Automatic Dimension" yet, -1 will crash and needs therefor to be overridden
    #endif


    func update(with model:Any, delegate:Any, for indexPath:IndexPath)
    {
        fatalError("[UIPheonix] You must override \(#function) in your subclass!")
    }
}

//----------------------------------------------------------------------------------------------------
// MARK:- UIPBaseTableViewCellProtocol.swift
// MARK:-
//----------------------------------------------------------------------------------------------------
//
//  UIPheonix
//  Copyright © 2016/2017 Mohsan Khan. All rights reserved.
//

//
//  https://github.com/MKGitHub/UIPheonix
//  http://www.xybernic.com
//  http://www.khanofsweden.com
//

//
//  Copyright 2016/2017 Mohsan Khan
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import Foundation
import CoreGraphics


protocol UIPBaseTableViewCellProtocol:class
{
    // we can't use "className" because that belongs to Objective-C NSObject
    var nameOfClass:String { get }
    static var nameOfClass:String { get }

    var rowHeight:CGFloat { get }
    var estimatedRowHeight:CGFloat { get }

    func update(with model:Any, delegate:Any, for indexPath:IndexPath)
}

//----------------------------------------------------------------------------------------------------
// MARK:- UIPBaseViewController.swift
// MARK:-
//----------------------------------------------------------------------------------------------------
//
//  UIPheonix
//  Copyright © 2016/2017 Mohsan Khan. All rights reserved.
//

//
//  https://github.com/MKGitHub/UIPheonix
//  http://www.xybernic.com
//  http://www.khanofsweden.com
//

//
//  Copyright 2016/2017 Mohsan Khan
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#if os(iOS) || os(tvOS)
    import UIKit
#elseif os(macOS)
    import Cocoa
#endif


protocol UIPBaseViewControllerProtocol
{
    static func newInstance<T:UIPBaseViewControllerProtocol>(with attributes:Dictionary<String, Any>) -> T
}


#if os(iOS) || os(tvOS)

    class UIPBaseViewController:UIViewController
    {
        var mPreparedAttributes:Dictionary<String, Any> = Dictionary<String, Any>()


        /*
            Example code, copy & paste into your concrete class.

            ///
            /// Create a new instance of self with nib.
            ///
            static func newInstance<T:UIPBaseViewControllerProtocol>(with attributes:Dictionary<String, Any>)
            -> T
            {
                let vc:FooBarViewController = FooBarViewController.init(nibName:"\(self)", bundle:nil)

                // init member
                vc.mPreparedAttributes = attributes

                return vc as! T
            }
        */
    }

#elseif os(macOS)

    class UIPBaseViewController:NSViewController
    {
        var mPreparedAttributes:Dictionary<String, Any> = Dictionary<String, Any>()


        /*
            Example code, copy & paste into your concrete class.

            ///
            /// Create a new instance of self with nib.
            ///
            static func newInstance<T:UIPBaseViewControllerProtocol>(with attributes:Dictionary<String, Any>)
            -> T
            {
                let vc:FooBarViewController = FooBarViewController.init(nibName:"\(self)", bundle:nil)

                // init member
                vc.mPreparedAttributes = attributes

                return vc as! T
            }
        */
    }

#endif

//----------------------------------------------------------------------------------------------------
// MARK:- UIPDelegates.swift
// MARK:-
//----------------------------------------------------------------------------------------------------
//
//  UIPheonix
//  Copyright © 2016/2017 Mohsan Khan. All rights reserved.
//

//
//  https://github.com/MKGitHub/UIPheonix
//  http://www.xybernic.com
//  http://www.khanofsweden.com
//

//
//  Copyright 2016/2017 Mohsan Khan
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import Foundation


protocol UIPButtonDelegate:class
{
    func buttonAction(_ buttonId:Int)
}

//----------------------------------------------------------------------------------------------------
// MARK:- UIPMisc.swift
// MARK:-
//----------------------------------------------------------------------------------------------------
//
//  UIPheonix
//  Copyright © 2016/2017 Mohsan Khan. All rights reserved.
//

//
//  https://github.com/MKGitHub/UIPheonix
//  http://www.xybernic.com
//  http://www.khanofsweden.com
//

//
//  Copyright 2016/2017 Mohsan Khan
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import CoreGraphics

#if os(iOS) || os(tvOS)
    import UIKit
#elseif os(macOS)
    import Cocoa
#endif


// MARK: Compiler Warning Generators


@available(*, deprecated:0.0.1, message:"THIS IS A FIXME, SEE COMMENT!")
func FIXME()
{
    // If you see this warning then the code needs to be fixed!
}

@available(*, deprecated:0.0.1, message:"THIS IS A NOTE, SEE COMMENT!")
func NOTE()
{
    // If you see this warning then the code needs attention!
}


// MARK:- Constants


struct UIPConstants
{
    static let modelType:String = "type"

    struct Collection
    {
        static let modelViewRelationships:String = "UIPCVModelViewRelationships"
        static let cellModels:String = "UIPCVCellModels"
    }
}


// MARK:- Return Types


///
/// `absoluteWidth` & `absoluteHeight`:
/// - true = use the size as it is provided
/// - false = the size is relative and should be added/subtracted to the original size
///
typealias UIPCellSize = (absoluteWidth:Bool, width:CGFloat, absoluteHeight:Bool, height:CGFloat)

///
/// Convenient variable for an unmodified cell size.
///
var UIPCellSizeUnmodified = UIPCellSize(absoluteWidth:false, width:0, absoluteHeight:false, height:0)


// MARK:- Cross Platform Types


///
/// Because Apple fails to keep it consistent!
/// UXKit any time soon?
///
#if os(iOS) || os(tvOS)
    typealias UIPPlatformFloat = Float
    typealias UIPPlatformRect = CGRect
    typealias UIPPlatformImage = UIImage
    typealias UIPPlatformColor = UIColor
    typealias UIPPlatformFont = UIFont
    typealias UIPPlatformView = UIView
    typealias UIPPlatformImageView = UIImageView
    typealias UIPPlatformTextField = UITextField
    typealias UIPPlatformLabel = UILabel
    typealias UIPPlatformButton = UIButton
    typealias UIPPlatformCollectionViewCell = UICollectionViewCell
    typealias UIPPlatformTableViewCell = UITableViewCell
    typealias UIPPlatformCollectionView = UICollectionView
    typealias UIPPlatformTableView = UITableView
    typealias UIPPlatformViewController = UIViewController
#elseif os(macOS)
    typealias UIPPlatformFloat = CGFloat
    typealias UIPPlatformRect = NSRect
    typealias UIPPlatformImage = NSImage
    typealias UIPPlatformColor = NSColor
    typealias UIPPlatformFont = NSFont
    typealias UIPPlatformView = NSView
    typealias UIPPlatformImageView = NSImageView
    typealias UIPPlatformTextField = NSTextField
    typealias UIPPlatformLabel = NSTextField
    typealias UIPPlatformButton = NSButton
    typealias UIPPlatformCollectionViewCell = NSCollectionViewItem
    typealias UIPPlatformTableViewCell = NSTableCellView
    typealias UIPPlatformCollectionView = NSCollectionView
    typealias UIPPlatformTableView = NSTableView
    typealias UIPPlatformViewController = NSViewController
#endif


// MARK:- Cross Platform


extension CGFloat
{
    static func valueForPlatform(mac:CGFloat, mobile:CGFloat, tv:CGFloat)
    -> CGFloat
    {
        #if os(iOS)
            return mobile
        #elseif os(tvOS)
            return tv
        #elseif os(macOS)
            return mac
        #endif
    }
}

//----------------------------------------------------------------------------------------------------
// MARK:- UIPheonix.swift
// MARK:-
//----------------------------------------------------------------------------------------------------
//
//  UIPheonix
//  Copyright © 2016/2017 Mohsan Khan. All rights reserved.
//

//
//  https://github.com/MKGitHub/UIPheonix
//  http://www.xybernic.com
//  http://www.khanofsweden.com
//

//
//  Copyright 2016/2017 Mohsan Khan
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import CoreGraphics

#if os(iOS) || os(tvOS)
    import UIKit
#elseif os(macOS)
    import Cocoa
#endif


fileprivate enum UIPDelegateViewType
{
    case collection
    case table
}


@available(OSX 10.11, iOS 9.0, tvOS 9.0, *)
final class UIPheonix
{
    // MARK: Private Members (uninitialized)
    fileprivate var mApplicationNameDot:String!
    fileprivate var mUIPDelegateViewType:UIPDelegateViewType!

    // (initialized as empty for convenience)
    fileprivate var mModelViewRelationships:Dictionary<String, String> = Dictionary<String, String>()
    fileprivate var mViewReuseIds:Dictionary<String, Any> = Dictionary<String, Any>()
    fileprivate var mDisplayModels:Array<UIPBaseCellModelProtocol> = Array<UIPBaseCellModelProtocol>()

    // MARK: Private Weak Reference
    fileprivate weak var mDelegateCollectionView:UIPPlatformCollectionView?
    fileprivate weak var mDelegateTableView:UIPPlatformTableView?


    // MARK:- Life Cycle


    ///
    /// Init for UICollectionView.
    ///
    /// - Parameters:
    ///   - collectionView: The collection view.
    ///
    init(with collectionView:UIPPlatformCollectionView?)
    {
        // init members
        mUIPDelegateViewType = UIPDelegateViewType.collection
        mApplicationNameDot = getApplicationName() + "."

        mDelegateCollectionView = collectionView
    }


    ///
    /// Init for UITableView.
    ///
    /// - Parameters:
    ///   - tableView: The table view.
    ///
    init(with tableView:UIPPlatformTableView?)
    {
        // init members
        mUIPDelegateViewType = UIPDelegateViewType.table
        mApplicationNameDot = getApplicationName() + "."

        mDelegateTableView = tableView
    }


    // MARK:- Model-View Relationships


    func setModelViewRelationships(_ dictionary:Dictionary<String, String>)
    {
        guard (dictionary.count != 0) else {
            fatalError("[UIPheonix] Can't set model-view relationships with dictionary because it is empty!")
        }

        mModelViewRelationships = dictionary

        connectWithDelegateViewType()
    }


    // MARK:- Display Models


    ///
    /// - Parameters:
    ///   - rawModelsArray: An array containing dictionary objects with model data.
    ///   - append: Append to, or replace, the current model list.
    ///
    func setDisplayModels(_ rawModelDataArray:Array<Any>, append:Bool)
    {
        guard (rawModelDataArray.count != 0) else {
            fatalError("[UIPheonix] Raw model data array is empty!")
        }

        // don't append, but replace
        if (!append)
        {
            // prepare a new empty display models list
            mDisplayModels.removeAll(keepingCapacity:false)
        }

        // instantiate model classes with their data in the display dictionary
        // add the models to the display list
        for aModelType:Any in rawModelDataArray
        {
            let modelDict:Dictionary<String, Any> = aModelType as! Dictionary<String, Any>
            let modelTypeName:String? = modelDict[UIPConstants.modelType] as? String

            // `type` field does not exist
            if (modelTypeName == nil) {
                fatalError("[UIPheonix] The key `type` was not found for the model `\(aModelType)`!")
            }

            // create & add models
            if let modelClassType:UIPBaseCellModelProtocol.Type = NSClassFromString(mApplicationNameDot + modelTypeName!) as? UIPBaseCellModelProtocol.Type
            {
                let aModelObj:UIPBaseCellModelProtocol = modelClassType.init()
                aModelObj.setContents(with:modelDict)

                mDisplayModels.append(aModelObj)
            }
        }
    }


    ///
    /// I.e. replace
    ///
    func setDisplayModels(_ array:Array<UIPBaseCellModelProtocol>)
    {
        mDisplayModels = array
    }


    func addDisplayModels(_ array:Array<UIPBaseCellModelProtocol>)
    {
        mDisplayModels.append(contentsOf:array)
    }


    func displayModels()
    -> Array<UIPBaseCellModelProtocol>
    {
        return mDisplayModels
    }


    ///
    /// The number of display models.
    ///
    func count()
    -> Int
    {
        return mDisplayModels.count
    }


    ///
    /// Get model.
    ///
    func model(at index:Int)
    -> UIPBaseCellModel?
    {
        if let cellModel:UIPBaseCellModel = mDisplayModels[index] as? UIPBaseCellModel
        {
            return cellModel
        }

        return nil
    }


    // MARK:- UICollectionView


    ///
    /// Call this after setting content on the cell to have a fitting layout size returned.
    /// **Note!** The cell's size is determined using Auto Layout & constraints.
    ///
    class func calculateLayoutSizeForCell(_ cell:UIPPlatformCollectionViewCell, preferredWidth:CGFloat)
    -> CGSize
    {
        var size:CGSize

        #if os(iOS) || os(tvOS)
            // set bounds, and match with the `contentView`
            cell.bounds = CGRect(x:0, y:0, width:preferredWidth, height:cell.bounds.size.height)
            cell.contentView.bounds = cell.bounds

            // layout subviews
            cell.setNeedsLayout()
            cell.layoutIfNeeded()

            // we use the `preferredWidth`
            // and the fitting height because of the layout pass done above
            size = cell.contentView.systemLayoutSizeFitting(UILayoutFittingCompressedSize)
            size.width = preferredWidth
            //size.height = CGFloat(ceilf(Float(size.height)))    // don't need to do this as per Apple's advice
        #elseif os(macOS)
            cell.view.bounds = CGRect(x:0, y:0, width:preferredWidth, height:cell.view.bounds.size.height)

            // layout subviews
            cell.view.layoutSubtreeIfNeeded()

            // we use the `preferredWidth`
            // and the height from the layout pass done above
            size = cell.view.bounds.size
            size.width = preferredWidth
        #endif

        return size
    }


    class func viewSize(with baseSize:CGSize, addedSize:UIPCellSize)
    -> CGSize
    {
        // by default, we use the cells layout size
        var finalSize:CGSize = baseSize

        // Replace or add/subtract size. //

        // width
        if (addedSize.absoluteWidth)
        {
            finalSize.width = addedSize.width
        }
        else
        {
            finalSize.width += addedSize.width
        }

        // height
        if (addedSize.absoluteHeight)
        {
            finalSize.height = addedSize.height
        }
        else
        {
            finalSize.height += addedSize.height
        }

        return finalSize
    }


    ///
    /// Dequeue reusable cell view.
    ///
    func dequeueView(withReuseIdentifier reuseIdentifier:String, for indexPath:IndexPath)
    -> UIPBaseCollectionViewCell?
    {
        guard (mDelegateCollectionView != nil) else {
            fatalError("[UIPheonix] `view for reuseIdentifier` failed, `mDelegateCollectionView` is nil!")
        }

        #if os(iOS) || os(tvOS)
            if let cellView:UIPBaseCollectionViewCell = mDelegateCollectionView!.dequeueReusableCell(withReuseIdentifier:reuseIdentifier, for:indexPath) as? UIPBaseCollectionViewCell
            {
                return cellView
            }
        #elseif os(macOS)
            if let cellView:UIPBaseCollectionViewCell = mDelegateCollectionView!.makeItem(withIdentifier:reuseIdentifier, for:indexPath) as? UIPBaseCollectionViewCell
            {
                return cellView
            }
        #endif

        return nil
    }


    func view(forReuseIdentifier viewReuseId:String)
    -> UIPBaseCollectionViewCell?
    {
        return mViewReuseIds[viewReuseId] as? UIPBaseCollectionViewCell
    }


    // MARK:- UITableView


    ///
    /// Dequeue reusable cell view.
    ///
    /// • macOS does not use `indexPath`.
    ///
    func dequeueView(withReuseIdentifier reuseIdentifier:String, for indexPath:IndexPath)
    -> UIPBaseTableViewCell?
    {
        guard (mDelegateTableView != nil) else {
            fatalError("[UIPheonix] `view for reuseIdentifier` failed, `mDelegateTableView` is nil!")
        }

        #if os(iOS) || os(tvOS)
            if let cellView:UIPBaseTableViewCell = mDelegateTableView!.dequeueReusableCell(withIdentifier:reuseIdentifier, for:indexPath) as? UIPBaseTableViewCell
            {
                return cellView
            }
        #elseif os(macOS)
            if let cellView:UIPBaseTableViewCell = mDelegateTableView!.make(withIdentifier:reuseIdentifier, owner:nil) as? UIPBaseTableViewCell
            {
                return cellView
            }
        #endif

        return nil
    }


    func view(forReuseIdentifier viewReuseId:String)
    -> UIPBaseTableViewCell?
    {
        return mViewReuseIds[viewReuseId] as? UIPBaseTableViewCell
    }


    // MARK:- Private


    func getApplicationName()
    -> String
    {
        let appNameAndClassName:String = NSStringFromClass(UIPheonix.self)                                          // i.e. "<AppName>.<ClassName>" = UIPheonix_iOS.UIPheonix
        let appNameAndClassNameArray:[String] = appNameAndClassName.characters.split{$0 == "."}.map(String.init)    // = ["UIPheonix_iOS", "UIPheonix"]

        //print(appNameAndClassName)
        //print(appNameAndClassNameArray)

        return appNameAndClassNameArray[0]
    }


    ///
    /// * Uses the model's name as the cell-view's reuse-id.
    /// * Registers all cell-views with the delegate view.
    ///
    fileprivate func connectWithDelegateViewType()
    {
        if (mUIPDelegateViewType == UIPDelegateViewType.collection)
        {
            guard (mDelegateCollectionView != nil) else {
                fatalError("[UIPheonix] `connectWithDelegateViewType` failed, `mDelegateCollectionView` is nil!")
            }
        }
        else if (mUIPDelegateViewType == UIPDelegateViewType.table)
        {
            guard (mDelegateTableView != nil) else {
                fatalError("[UIPheonix] `connectWithDelegateViewType` failed, `mDelegateTableView` is nil!")
            }
        }

        guard (mModelViewRelationships.count != 0) else {
            fatalError("[UIPheonix] Model-View relationships dictionary is empty!")
        }


        var modelClassNames:Array<String> = Array<String>()
        var nibNames:Array<String> = Array<String>()

        for (modelClassName, viewClassName) in mModelViewRelationships
        {
            modelClassNames.append(modelClassName)
            nibNames.append(viewClassName)
        }

        guard (modelClassNames.count == nibNames.count) else {
            fatalError("[UIPheonix] Number of `modelClassNames` & `nibNames` count does not match!")
        }


        for i in 0 ..< modelClassNames.count
        {
            let modelName:String = modelClassNames[i]
            let nibName:String = nibNames[i]

            // only add new models/views that have not been registered
            if (mViewReuseIds[modelName] == nil)
            {
                #if os(iOS) || os(tvOS)
                    let nibContents:[Any]? = Bundle.main.loadNibNamed(nibName, owner:nil, options:nil)
                #elseif os(macOS)
                    var nibContents:NSArray? = NSArray()

                    let isNibLoaded:Bool = Bundle.main.loadNibNamed(nibName, owner:nil, topLevelObjects:&nibContents!)
                    guard (isNibLoaded) else {
                        fatalError("[UIPheonix] Nib could not be loaded: \(nibName)")
                    }
                #endif

                guard ((nibContents != nil) && (nibContents!.count > 0)) else {
                    fatalError("[UIPheonix] Nib is empty: \(nibName)")
                }


                // find the element we are looking for, since the xib contents order is not guaranteed
                let filteredNibContents:[Any] = nibContents!.filter(
                {
                    (element:Any) -> Bool in
                    return (String(describing:type(of:element)) == nibName)
                })

                guard (filteredNibContents.count == 1) else {
                    fatalError("[UIPheonix] Nib \"\(nibName)\" contains more elements, expected only 1!")
                }


                // with the reuse-id, connect the cell-view in the nib
                #if os(iOS) || os(tvOS)
                    mViewReuseIds[modelName] = nibContents!.first
                #elseif os(macOS)
                    mViewReuseIds[modelName] = filteredNibContents.first
                #endif

                // register nib with the delegate collection view
                #if os(iOS) || os(tvOS)
                    let nib:UINib = UINib(nibName:nibName, bundle:nil)

                    if (mUIPDelegateViewType == UIPDelegateViewType.collection)
                    {
                        mDelegateCollectionView!.register(nib, forCellWithReuseIdentifier:modelName)
                    }
                    else if (mUIPDelegateViewType == UIPDelegateViewType.table)
                    {
                        mDelegateTableView!.register(nib, forCellReuseIdentifier:modelName)
                    }
                #elseif os(macOS)
                    let nib:NSNib? = NSNib(nibNamed:nibName, bundle:nil)

                    guard (nib != nil) else {
                        fatalError("[UIPheonix] Nib could not be instantiated: \(nibName)")
                    }

                    if (mUIPDelegateViewType == UIPDelegateViewType.collection)
                    {
                        mDelegateCollectionView!.register(nib, forItemWithIdentifier:modelName)
                    }
                    else if (mUIPDelegateViewType == UIPDelegateViewType.table)
                    {
                        mDelegateTableView!.register(nib, forIdentifier:modelName)
                    }
                #endif
            }
        }
    }
}

